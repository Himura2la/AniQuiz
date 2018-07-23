import React from 'react'
import { connectViewModel } from 'resolve-redux'
import { connect } from 'react-redux'
import { bindActionCreators } from 'redux'
import { diffToSeconds } from '../../common/helpers'

import Header from '../components/Header.js'
import Timer from '../components/Timer.js'

//import { } from 'react-bootstrap'

const viewModelName = 'OSTQuiz'
const aggregateId = 'main'

function musicTime(state) {
  return state['musicStopped'] != null ? (
    <span>{diffToSeconds(state['musicStopped'] - state['musicStarted'])}</span>
  ) : (
    <Timer start={state['musicStarted']} />
  )
}

export const Board = ({ state }) => {
  return (
    <div>
      <Header title="AniQuiz" favicon="/favicon.ico" css={['/bootstrap.min.css', '/style.css']} />

      <div className="board-wrapper">
        {state['round'] === 0 && <h1>The Game Begins!</h1>}
        {state['musicStarted'] != null && (
          <div>
            <h1>Time: {musicTime(state)}s.</h1>
            <h1>Rate: {state['rate']}</h1>
          </div>
        )}
        {state['answeringTeam'] && <h1>Team: {state['answeringTeam']}</h1>}
      </div>
    </div>
  )
}

const mapStateToOptions = () => ({
  viewModelName,
  aggregateIds: [aggregateId]
})

const mapStateToProps = (state, { data }) => ({
  state: data
})

export default connectViewModel(mapStateToOptions)(
  connect(
    mapStateToProps,
    null
  )(Board)
)
