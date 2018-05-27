import React from 'react'

class Timer extends React.Component {
    constructor(props) {
        super(props);
        this.state = {elapsed: 0};
    }
    componentDidMount() {
        let timer = setInterval(() => { this.setState({ elapsed: new Date() - this.props.start }) }, 50)
        this.setState({ timer });
    }
    componentWillUnmount() {
        clearInterval(this.state.timer)
    }
    render() {
        var elapsed = Math.round(this.state.elapsed / 100)
        var seconds = (elapsed / 10).toFixed(1)
        return <span>{seconds}</span>
    }
}

export default Timer
