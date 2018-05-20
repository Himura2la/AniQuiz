import GameConfig from '../game-config'

export default [
  {
    name: 'TimerOST',
    commands: {
      newGame: (state) => ({
        type: 'GAME_RESET'
      }),
      startMusic: (state) => {
        //TODO: Start timer and call RATE_INCREASED every GameConfig.rateIncreaseSeconds
        return { type: 'MUSIC_STARTED' }
      },
      increaseRate: (state) => ({
        type: 'RATE_INCREASED'
      }),
      stopMusic: (state, { payload: { team } }) => ({
        type: 'TEAM_READY',
        payload: { team }
      })
    }
  }
]
