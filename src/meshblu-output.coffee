_ = require 'lodash'
ReturnValue = require 'nanocyte-component-return-value'

class MeshbluOutput extends ReturnValue
  onEnvelope: (envelope) =>
    {config,message} = envelope
    {uuid} = config

    _.defaults devices: [uuid], message

module.exports = MeshbluOutput
