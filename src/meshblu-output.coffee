ReturnValue = require 'nanocyte-component-return-value'

class MeshbluOutput extends ReturnValue
  onEnvelope: (envelope) =>
    {config,message} = envelope
    {uuid,topic} = config

    devices: [uuid]
    topic:   topic
    payload: message


module.exports = MeshbluOutput
