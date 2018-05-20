import React from 'react'
import { connectViewModel } from 'resolve-redux'
import { bindActionCreators } from 'redux'

import Header from '../components/Header.js'

//import { } from 'react-bootstrap'

const viewModelName = 'TimerOST'
const aggregateId = 'root-id'  // TODO: Learn how to use it

export const Board = ({
  state,
  aggregateId
}) => {

  return (
    <div>
      <Header />

      <div className="board-wrapper">

        {(state['musicPlaying'] || state['answeringTeam'] != null) &&
          <div>
            <h1>Time: TODO</h1>
            <h1>Rate: {state['rate']}</h1>
            {state['musicPlaying'] && <h1>Music Playing</h1>}
          </div>
        }
        {state['answeringTeam'] && 
          <h1>Team: {state['answeringTeam']}</h1>
        }

      </div>
    </div>
  )
}

const mapStateToProps = state => ({
  viewModelName,
  aggregateId,
  state: state.viewModels[viewModelName][aggregateId]
})

const mapDispatchToProps = (dispatch, props) =>
  bindActionCreators(props.aggregateActions, dispatch)

export default connectViewModel(mapStateToProps, mapDispatchToProps)(Board)
