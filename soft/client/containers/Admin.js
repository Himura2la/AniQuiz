import React from 'react'
import { connectViewModel } from 'resolve-redux'
import { connect } from 'react-redux'
import { bindActionCreators } from 'redux'

import Header from '../components/Header.js'

import { ListGroup, ListGroupItem, Checkbox, Form, Button, Image, FormControl } from 'react-bootstrap'

const viewModelName = 'OSTQuiz'
const aggregateId = 'main' // TODO: Game ID

export const Admin = ({ state, newGame, startMusic, stopMusic }) => {
  return (
    <div>
      <Header title="AniQuiz Control" favicon="/favicon.ico" css={['/bootstrap.min.css', '/style.css']} />

      <div className="admin-wrapper">
        <ListGroup className="example-list">
          {Object.keys(state).map(k => (
            <ListGroupItem key={k}>
              {k}: {state[k] === null ? 'null' : state[k].toString()}
            </ListGroupItem>
          ))}
        </ListGroup>

        <Button className="admin-button" bsStyle="danger" onClick={() => newGame(aggregateId)}>
          {' '}
          New Game
        </Button>

        <Button className="admin-button" bsStyle="primary" onClick={() => startMusic(aggregateId)}>
          {' '}
          Start Music
        </Button>

        {[1, 2, 3].map(i => (
          <Button
            className="admin-button"
            bsStyle="success"
            key={i}
            onClick={() => stopMusic(aggregateId, { team: i })}
          >
            {' '}
            Team {i}
          </Button>
        ))}
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

const mapDispatchToProps = (dispatch, { aggregateActions }) => bindActionCreators(aggregateActions, dispatch)

export default connectViewModel(mapStateToOptions)(
  connect(
    mapStateToProps,
    mapDispatchToProps
  )(Admin)
)
