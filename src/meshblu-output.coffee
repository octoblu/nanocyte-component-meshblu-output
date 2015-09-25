ReturnValue = require 'nanocyte-component-return-value'

class MeshbluOutput extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = MeshbluOutput
