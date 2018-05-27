import GameConfig from '../game-config'

const delay = timeout => new Promise(resolve => setTimeout(resolve, timeout))
let onMusicTriggered = false;

async function mainSagaImpl(executeViewModelQuery, executeCommand) {
  await executeCommand({
    aggregateId: 'root-id',
    aggregateName: 'TimerOST',
    type: 'newGame'
  })

  let musicPlaying = false
  async function getMusicStatus(){
    musicPlaying = (await executeViewModelQuery({
      aggregateIds: ['root-id'],
      modelName: 'TimerOST'
    })).musicPlaying
    return musicPlaying
  }

  while (true) {
    if (onMusicTriggered) {
      getMusicStatus()
      onMusicTriggered = false
    }

    if (musicPlaying) {
      await delay(GameConfig.rateIncreaseSeconds * 1000)
      if (await getMusicStatus()) // May have stopped by this time
        await executeCommand({
          aggregateId: 'root-id',
          aggregateName: 'TimerOST',
          type: 'increaseRate'
        })
    }
    else
      await delay(50)   // Standing by...
  }
}

function mainSaga({ resolve: { subscribeByEventType, executeViewModelQuery, executeCommand } }) {
  subscribeByEventType(
    ['MUSIC_STARTED', 'TEAM_READY'],
    () => { onMusicTriggered = true },
    { startTime: new Date().getTime() }
  )

  mainSagaImpl(executeViewModelQuery, executeCommand).catch(error => {
    // eslint-disable-next-line no-console
    console.log('Saga error:', error)
  })
}

export default [mainSaga]
