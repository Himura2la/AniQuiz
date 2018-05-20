import React from 'react'
import { connectViewModel } from 'resolve-redux'
import { bindActionCreators } from 'redux'

import { Helmet } from 'react-helmet'
import {
  ListGroup,
  ListGroupItem,
  Checkbox,
  Form,
  Button,
  Image,
  FormControl
} from 'react-bootstrap'

const viewModelName = 'TimerOST'
const aggregateId = 'root-id'  // TODO

export const Admin = ({
  state,
  newGame,
  startMusic,
  increaseRate,
  stopMusic,
  aggregateId
}) => {

  return (
    <div>
      <Helmet>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="/bootstrap.min.css" />
        <link rel="stylesheet" href="/style.css" />
        <title>AniQuiz</title>
      </Helmet>

      <div className="example-wrapper">

        <ListGroup className="example-list">
          {Object.keys(state).map(k => (
            <ListGroupItem key={k}>
              {k}: {state[k] === null ? "null" : state[k].toString()}
            </ListGroupItem>
          ))}
        </ListGroup>

        <Button
          className="example-button"
          bsStyle="success"
          onClick={() => {newGame(aggregateId)}}
        >
          New Game
        </Button>

        <Button
          className="example-button"
          bsStyle="success"
          onClick={() => {startMusic(aggregateId, {round: 1})}}
        >
          Start Music
        </Button>

        <Button
          className="example-button"
          bsStyle="success"
          onClick={() => {increaseRate(aggregateId)}}
        >
          Increase Rate
        </Button>

        <Button
          className="example-button"
          bsStyle="success"
          onClick={() => {stopMusic(aggregateId, {team: 3})}}
        >
          Stop Music
        </Button>

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

export default connectViewModel(mapStateToProps, mapDispatchToProps)(Admin)
