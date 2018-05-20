export default [
  {
    name: 'Todo',
    commands: {
      createItem: (state, { payload: { id, text } }) => ({
        type: 'ITEM_CREATED',
        payload: { id, text }
      }),
      toggleItem: (state, { payload: { id } }) => ({
        type: 'ITEM_TOGGLED',
        payload: { id }
      }),
      removeItem: (state, { payload: { id } }) => ({
        type: 'ITEM_REMOVED',
        payload: { id }
      })
    }
  },
  {
    name: 'TimerOST',
    commands: {
      newGame: (state) => ({
        type: 'GAME_RESET'
      }),
      startMusic: (state, { payload: { round } }) => ({
        type: 'MUSIC_STARTED',
        payload: { round }
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
