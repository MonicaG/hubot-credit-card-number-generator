Helper = require 'hubot-test-helper'
helper = new Helper('../src/credit-card-number-generator.coffee')
chai = require 'chai'
expect = chai.expect

beforeEach ->
  @room = helper.createRoom()

afterEach ->
  @room.destroy()

context 'hubot responds to ccnum', ->
  it 'will respond to v', ->
    @room.user.say('jane', 'hubot ccnum v').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/4\d{15}/)

it 'will respond to V', ->
    @room.user.say('jane', 'hubot ccnum V').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum V'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/4\d{15}/)

it 'will respond to m', ->
    @room.user.say('jane', 'hubot ccnum m').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum m'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/5\d{15}/)

it 'will respond to M', ->
    @room.user.say('jane', 'hubot ccnum M').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum M'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/5\d{15}/)

it 'will respond to a', ->
    @room.user.say('jane', 'hubot ccnum a').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum a'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/3\d{14}/)

it 'will respond to A', ->
    @room.user.say('jane', 'hubot ccnum A').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum A'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/3\d{14}/)

  it 'will respond with multiple ccnumbers when a number is provided', ->
    @room.user.say('jane', 'hubot ccnum v 3').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v 3'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      ccnums = @room.messages[1][1].split("\n")
      expect(ccnums[0]).to.match(/4\d{15}/)
      expect(ccnums[1]).to.match(/4\d{15}/)
      expect(ccnums[2]).to.match(/4\d{15}/)

  it 'will respond with error message when a number greater than 20 is provided', ->
    @room.user.say('jane', 'hubot ccnum v 21').then =>
      expect(@room.messages).to.eql [
        ['jane', 'hubot ccnum v 21']
        ['hubot', 'Please enter a number between 1 and 20 (inclusive)']
      ]

  it 'will respond with error message when a number less than 1 is provided', ->
    @room.user.say('jane', 'hubot ccnum v 0').then =>
      expect(@room.messages).to.eql [
        ['jane', 'hubot ccnum v 0']
        ['hubot', 'Please enter a number between 1 and 20 (inclusive)']
      ]

  it 'will respond when 20 ccnumbers are requested', ->
    @room.user.say('jane', 'hubot ccnum v 20').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v 20'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      ccnums = @room.messages[1][1].split("\n")
      expect(ccnums.length).to.equal(20)

  it 'will respond when 1 ccnumber is requested', ->
    @room.user.say('jane', 'hubot ccnum v 1').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v 1'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/4\d{15}/)

it 'will respond with one ccnumber when number is bad', ->
    @room.user.say('jane', 'hubot ccnum v asdf').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v asdf'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/4\d{15}/)

it 'will respond with one ccnumber when number is bad', ->
    @room.user.say('jane', 'hubot ccnum v4').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v4'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(/4\d{15}/)

