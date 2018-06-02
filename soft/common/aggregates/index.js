export default [
  {
    name: 'TimerOST',
    commands: {
      newGame: (state) => ({
        type: 'GAME_RESET'
      }),
      connectHardware: (state, { payload: { url } }) => ({
        type: 'HARDWARE_CONNECT_REQUESTED',
        payload: { url }
      }),
      hardwareConnected: (state, { payload: { url } }) => ({
        type: 'HARDWARE_CONNECTED',
        payload: { url }
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
