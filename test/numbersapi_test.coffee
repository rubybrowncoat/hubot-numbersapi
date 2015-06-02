chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'numbersapi', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/numbersapi')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/numbersapi ([0-9]+)/i)