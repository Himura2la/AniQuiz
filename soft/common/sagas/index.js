import GameConfig from '../game-config'
import { diffToSeconds } from '../../common/helpers'
import { MQTTClient } from './mqtt'

const delay = timeout => new Promise(resolve => setTimeout(resolve, timeout))
let onMusicTriggered = false;

async function mainSagaImpl(executeViewModelQuery, executeCommand) {
  await executeCommand({
    aggregateId: 'root-id',
    aggregateName: 'TimerOST',
    type: 'newGame'
  })

  let musicPlaying = false
  let musicStarted = null
  let increasesCount = 0
  async function getMusicStatus(){
    const state = await executeViewModelQuery({
      aggregateIds: ['root-id'],
      modelName: 'TimerOST'
    })
    musicStarted = state.musicStarted
    musicPlaying = state.musicStarted != null && state.musicStopped === null
    return musicPlaying
  }

  while (true) {
    if (onMusicTriggered) {
      getMusicStatus()
      onMusicTriggered = false
      increasesCount = 0
    }

    if (musicPlaying) {
      let elapsedTime = diffToSeconds(new Date() - musicStarted)
      let lastIncreaseTime = GameConfig.rateIncreaseSeconds * increasesCount
      if (elapsedTime - lastIncreaseTime >= GameConfig.rateIncreaseSeconds
          && await getMusicStatus()) {
        await executeCommand({
          aggregateId: 'root-id',
          aggregateName: 'TimerOST',
          type: 'increaseRate'
        })
        increasesCount++
      }
    }
    await delay(GameConfig.rateUpdateIntervalMs)
  }
}

function mainSaga({ resolve: { subscribeByEventType, executeViewModelQuery, executeCommand } }) {
  subscribeByEventType(
    ['GAME_RESET', 'MUSIC_STARTED', 'RATE_INCREASED', 'TEAM_READY'],
    (event) => {
      onMusicTriggered = event.type === 'MUSIC_STARTED' || event.type === 'TEAM_READY'
      let msg = event.type === 'TEAM_READY' ? event.type + `(${event.payload.team})` : event.type
      MQTTClient.publish('TimerOST', msg)
    },
    { startTime: new Date().getTime() }
  )

  mainSagaImpl(executeViewModelQuery, executeCommand).catch(error => {
    // eslint-disable-next-line no-console
    console.log('Saga error:', error)
  })
}

export default [mainSaga]
