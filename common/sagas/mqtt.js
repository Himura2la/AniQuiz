import { connect } from 'mqtt'
import { exec } from 'child_process'

exec('mosqitto\\mosquitto.exe', function(error, stdout, stderr) {
  console.log(error, stdout, stderr)
})

export const MQTTClient = connect('mqtt://127.0.0.1:1883')

MQTTClient.on('connect', () => {
  MQTTClient.subscribe('TimerOST')
  MQTTClient.publish('TimerOST', 'Node.js Connected!')
})

MQTTClient.on('message', (topic, message) => {
  console.log('[ MQTT ] %s --> %s', topic, message)
})