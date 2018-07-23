import GameConfig from '../game-config'
import { diffToSeconds } from '../../common/helpers'

const delay = timeout => new Promise(resolve => setTimeout(resolve, timeout))
let onMusicTriggered = false

async function mainSagaImpl(executeViewModelQuery, executeCommand) {
  await executeCommand({
    aggregateId: 'main',
    aggregateName: 'OSTQuiz',
    type: 'newGame'
  })

  let musicPlaying = false
  let musicStarted = null
  let increasesCount = 0
  async function getMusicStatus() {
    const state = await executeViewModelQuery({
      aggregateIds: ['main'],
      modelName: 'OSTQuiz'
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
      if (elapsedTime - lastIncreaseTime >= GameConfig.rateIncreaseSeconds && (await getMusicStatus())) {
        await executeCommand({
          aggregateId: 'main',
          aggregateName: 'OSTQuiz',
          type: 'increaseRate'
        })
        increasesCount++
      }
    }
    await delay(GameConfig.rateUpdateIntervalMs)
  }
}

function forwardEvent(event) {
  let msg
  switch (event.type) {
    case 'TEAM_READY':
      msg = event.type + `(${event.payload === null ? null : event.payload.team})`
      break
    case 'HARDWARE_CONNECTED':
      msg = event.type + `(${event.payload === null ? null : event.payload.url})`
      break
    default:
      msg = event.type
  }
  console.log(msg)
}

async function tryConnectHardware(url, executeCommand) {
  console.log(`HARDWARE_CONNECT_REQUESTED(${url})`)

  //TODO: Check that the URL works

  executeCommand({
    aggregateId: 'main',
    aggregateName: 'OSTQuiz',
    type: 'hardwareConnected',
    payload: { url }
  })
}

function mainSaga({ resolve: { subscribeByEventType, executeViewModelQuery, executeCommand } }) {
  subscribeByEventType(
    ['GAME_RESET', 'MUSIC_STARTED', 'RATE_INCREASED', 'TEAM_READY', 'HARDWARE_CONNECT_REQUESTED', 'HARDWARE_CONNECTED'],
    event => {
      onMusicTriggered = event.type === 'MUSIC_STARTED' || event.type === 'TEAM_READY'
      if (event.type === 'HARDWARE_CONNECT_REQUESTED')
        tryConnectHardware(event.payload === null ? null : event.payload.url, executeCommand)
      else forwardEvent(event)
    },
    { startTime: new Date().getTime() }
  )

  mainSagaImpl(executeViewModelQuery, executeCommand).catch(error => {
    // eslint-disable-next-line no-console
    console.log('Saga error:', error)
  })
}

export default [mainSaga]
