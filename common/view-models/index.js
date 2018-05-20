export default [
  {
    name: 'Todos',
    projection: {
      Init: () => ({}),
      ITEM_CREATED: (state, { payload: { id, text } }) => ({
        ...state,
        [id]: {
          text,
          checked: false
        }
      }),
      ITEM_TOGGLED: (state, { payload: { id } }) => ({
        ...state,
        [id]: {
          ...state[id],
          checked: !state[id].checked
        }
      }),
      ITEM_REMOVED: (state, { payload: { id } }) => {
        const nextState = { ...state }
        delete nextState[id]
        return nextState
      }
    },
    serializeState: state => JSON.stringify(state),
    deserializeState: state => JSON.parse(state)
  },
  {
    name: 'TimerOST',
    projection: {
      Init: () => ({
        round: 1,
        musicPlaying: false,
        rate: null,
        answeringTeam: null
      }),
      GAME_RESET: (state) => ({
        round: 1,
        musicPlaying: false,
        rate: null,
        answeringTeam: null
      }),
      MUSIC_STARTED: (state, { payload: { round } }) => ({
        ...state,
        round: round,
        musicPlaying: true,
        rate: 10
      }),
      RATE_INCREASED: (state) => ({
        ...state,
        rate: state.rate + 10
      }),
      TEAM_READY: (state, { payload: { team } }) => ({
        ...state,
        musicPlaying: false,
        answeringTeam: team
      })
    },
    serializeState: state => JSON.stringify(state),
    deserializeState: state => JSON.parse(state)
  }
]
