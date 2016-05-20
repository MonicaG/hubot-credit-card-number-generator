Helper = require 'hubot-test-helper'
helper = new Helper('../src/credit-card-number-generator.coffee')
chai = require 'chai'
expect = chai.expect

visa_regex = /^4\d{15}$/
master_card_regex = /^5\d{15}$/
amex_regex = /^3[47]\d{13}$/
diner_regex = /^3((00|01|02|03)\d{13}|[68]\d{14})$/
discover_regex = /^6011\d{12}$/
enRoute_regex = /^2\d{15}$/
jcb_regex = /^35\d{14}$/
voyager_regex = /^8699\d{12}$/

beforeEach ->
  @room = helper.createRoom()

afterEach ->
  @room.destroy()

context 'hubot is requested to generate visa card numbers', ->
  it 'will respond to v', ->
    @room.user.say('jane', 'hubot ccnum v').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(visa_regex)

  it 'will respond to V', ->
    @room.user.say('jane', 'hubot ccnum V').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum V'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(visa_regex)

context 'hubot is requested to generate master card numbers', ->
  it 'will respond to m', ->
    @room.user.say('jane', 'hubot ccnum m').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum m'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(master_card_regex)

  it 'will respond to M', ->
    @room.user.say('jane', 'hubot ccnum M').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum M'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(master_card_regex)

context 'hubot is requested to generate american express numbers', ->
  it 'will respond to a', ->
    @room.user.say('jane', 'hubot ccnum a').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum a'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(amex_regex)

  it 'will respond to A', ->
    @room.user.say('jane', 'hubot ccnum A').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum A'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(amex_regex)

context 'hubot is requested to generate diner card numbers', ->
  it 'will respond to dn', ->
    @room.user.say('jane', 'hubot ccnum dn').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum dn'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(diner_regex)

  it 'will respond to DN', ->
    @room.user.say('jane', 'hubot ccnum DN').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum DN'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(diner_regex)

  it 'will respond to Dn', ->
    @room.user.say('jane', 'hubot ccnum Dn').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum Dn'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(diner_regex)

  it 'will respond to dN', ->
    @room.user.say('jane', 'hubot ccnum dN').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum dN'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(diner_regex)

context 'hubot is requested to generate discover card numbers', ->
  it 'will respond to ds', ->
    @room.user.say('jane', 'hubot ccnum ds').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum ds'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(discover_regex)

  it 'will respond to DS', ->
    @room.user.say('jane', 'hubot ccnum DS').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum DS'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(discover_regex)

  it 'will respond to Ds', ->
    @room.user.say('jane', 'hubot ccnum Ds').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum Ds'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(discover_regex)

  it 'will respond to dS', ->
    @room.user.say('jane', 'hubot ccnum dS').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum dS'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(discover_regex)


context 'hubot is requested to generate enRoute card numbers', ->
  it 'will respond to e', ->
    @room.user.say('jane', 'hubot ccnum e').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum e'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(enRoute_regex)

  it 'will respond to E', ->
    @room.user.say('jane', 'hubot ccnum E').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum E'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(enRoute_regex)

context 'hubot is requested to generate jcb card numbers', ->
  it 'will respond to j', ->
    @room.user.say('jane', 'hubot ccnum j').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum j'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(jcb_regex)


  it 'will respond to J', ->
    @room.user.say('jane', 'hubot ccnum J').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum J'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(jcb_regex)

context 'hubot is requested to generate voyager card numbers', ->
  it 'will respond to vo', ->
    @room.user.say('jane', 'hubot ccnum vo').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum vo'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(voyager_regex)

  it 'will respond to VO', ->
    @room.user.say('jane', 'hubot ccnum VO').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum VO'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(voyager_regex)

  it 'will respond to Vo', ->
    @room.user.say('jane', 'hubot ccnum Vo').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum Vo'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(voyager_regex)

  it 'will respond to vO', ->
    @room.user.say('jane', 'hubot ccnum vO').then  =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum vO'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(voyager_regex)


context 'hubot responds to request for multiple credit card numbers ', ->
  it 'will respond with multiple ccnumbers when a number is provided', ->
    @room.user.say('jane', 'hubot ccnum v 3').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v 3'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      ccnums = @room.messages[1][1].split("\n")
      expect(num).to.match(visa_regex) for num in ccnums

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
      expect(@room.messages[1][1]).to.match(visa_regex)

  it 'will respond with one ccnumber when number is bad', ->
    @room.user.say('jane', 'hubot ccnum v asdf').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v asdf'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(visa_regex)

  it 'will respond with one ccnumber when number is bad', ->
    @room.user.say('jane', 'hubot ccnum v4').then =>
      expect(@room.messages.length).to.equal(2)
      expect(@room.messages[0]).to.eql [
        'jane', 'hubot ccnum v4'
      ]
      expect(@room.messages[1][0]).to.eql('hubot')
      expect(@room.messages[1][1]).to.match(visa_regex)

