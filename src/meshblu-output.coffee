_ = require 'lodash'
ReturnValue = require 'nanocyte-component-return-value'

class MeshbluOutput extends ReturnValue
  onEnvelope: (envelope) =>
    {config,message} = envelope
    {uuid,topic} = config

    _.defaults devices: [uuid], message, topic: topic

module.exports = MeshbluOutput
