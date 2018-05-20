export default [
  {
    name: 'TimerOST',
    commands: {
      newGame: (state) => ({
        type: 'GAME_RESET'
      }),
      startMusic: (state) => ({
        type: 'MUSIC_STARTED'
      }),
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
