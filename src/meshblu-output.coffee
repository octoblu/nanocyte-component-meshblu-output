ReturnValue = require 'nanocyte-component-return-value'

class MeshbluOutput extends ReturnValue
  onEnvelope: (envelope) =>
    {config} = envelope
    {uuid} = config
    delete config.uuid

    message = config
    message.devices = [uuid]
    message

module.exports = MeshbluOutput
