import GameConfig from '../game-config'

const startGameState = () => ({
  round: 0,
  musicStarted: null,
  musicStopped: null,
  rate: null,
  answeringTeam: null
})

export default [
  {
    name: 'TimerOST',
    projection: {
      Init: startGameState,
      GAME_RESET: startGameState,
      MUSIC_STARTED: (state) => ({
        ...state,
        round: state.round + 1,
        musicStarted: new Date(),
        rate: GameConfig.initRate,
        musicStopped: null,
        answeringTeam: null
      }),
      RATE_INCREASED: (state) => ({
        ...state,
        rate: state.rate + GameConfig.rateIncrement
      }),
      TEAM_READY: (state, { payload: { team } }) => ({
        ...state,
        musicStopped: new Date(),
        answeringTeam: team
      })
    },
    serializeState: state => JSON.stringify(state),
    deserializeState: state => JSON.parse(state)
  }
]
