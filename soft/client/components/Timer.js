import React from 'react'
import GameConfig from '../../common/game-config'
import { diffToSeconds } from '../../common/helpers'

class Timer extends React.Component {
  constructor(props) {
    super(props);
    this.state = { elapsed: 0 };
  }
  componentDidMount() {
    let timer = setInterval(() => this.setState({ elapsed: new Date() - this.props.start }),
                GameConfig.timeUpdateIntervalMs)
    this.setState({ timer });
  }
  componentWillUnmount() {
    clearInterval(this.state.timer)
  }
  render() {
    return <span>{diffToSeconds(this.state.elapsed)}</span>
  }
}

export default Timer
