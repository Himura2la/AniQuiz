import React from 'react'
import { connectViewModel } from 'resolve-redux'
import { bindActionCreators } from 'redux'

import Header from '../components/Header.js'

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
const aggregateId = 'root-id'  // TODO: Learn how to use it

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
      <Header />

      <div className="admin-wrapper">

        <ListGroup className="example-list">
          {Object.keys(state).map(k => (
            <ListGroupItem key={k}>
              {k}: {state[k] === null ? "null" : state[k].toString()}
            </ListGroupItem>
          ))}
        </ListGroup>

        <Button className="admin-button" bsStyle="danger"
          onClick={() => {newGame(aggregateId)}}
        > New Game
        </Button>

        <Button className="admin-button" bsStyle="primary"
          onClick={() => {startMusic(aggregateId)}}
        > Start Music
        </Button>

        <Button className="admin-button" bsStyle="warning"
          onClick={() => {increaseRate(aggregateId)}}
        > Increase Rate
        </Button>

        <Button className="admin-button" bsStyle="success"
          onClick={() => {stopMusic(aggregateId, {team: 3})}}
        > Stop Music
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
