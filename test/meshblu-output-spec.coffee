ReturnValue = require 'nanocyte-component-return-value'
MeshbluOutput = require '../src/meshblu-output'

describe 'MeshbluOutput', ->
  beforeEach ->
    @sut = new MeshbluOutput

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope', ->
      beforeEach ->
        @result = @sut.onEnvelope
          config:
            uuid: 'device-uuid'
            topic: 'flow'
            payload:
              some: 'data'

      it 'should return the message', ->
        expect(@result).to.deep.equal
          devices: ['device-uuid']
          topic: 'flow'
          payload:
            some: 'data'

    describe 'when called with a much cooler envelope', ->
      beforeEach ->
        @result = @sut.onEnvelope
          config:
            uuid: 'the-device-uuid'
            topic: 'watch-my-flow'
            payload:
              party: 'at my house!'

      it 'should return the message', ->
        expect(@result).to.deep.equal
          devices: ['the-device-uuid']
          topic: 'watch-my-flow'
          payload:
            party: 'at my house!'
