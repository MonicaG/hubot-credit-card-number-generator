# Description
#   A hubot script that generates credit card numbers for you
#
# Configuration:
#   None
#
# Commands:
#   hubot ccnum <Amex|Mastercard|Visa> - responds with cc numbers
#
# Notes:
#   None
#
# Author:
#   Monica Granbois <mgranbois@outlook.com>
generator = require('creditcard-generator')

module.exports = (robot) ->
  robot.respond /ccnum ([amv])(\s+\d+)*/i, (res) ->
    card = res.match[1]
    num = res.match[2]
    num = 1 if num is undefined
    if num < 1 or num > 20
        res.send "Please enter a number between 1 and 20 (inclusive)"
    else
        vals = generator.GenCC(get_command(card), num)
        junk = vals.toString()
        junk = junk.replace /,/g, "\n"
        res.send junk

  get_command = (input) ->
    input = input.toLowerCase()
    if input is "a"
        return "Amex"
    else if input is "m"
        return "Mastercard"
    else if input is "v"
        return "VISA"
    else
        return ""

