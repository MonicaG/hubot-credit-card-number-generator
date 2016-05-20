# Description
#   A hubot script that uses creditcard-generator to create test credit card numbers that pass the Luhn check.
#
# Configuration:
#   None
#
# Commands:
#   hubot ccnum [cctype] [num] - responds with test credit card numbers. cctype is one of: a|m|v|j|e|vo|dn|ds. Optionally, specify a number and it will return n card numbers.
#
# Notes:
#   cctype is one of:
#   a  = American Express
#   dn = Diners Card
#   ds = Discover Card
#   e  = enRoute Card
#   j  = JCB Card
#   m  = Master Card
#   v  = Visa Card
#   vo = Voyager Card
#
# Dependencies:
#   creditcard-generator
#
# Author:
#   Monica Granbois <mgranbois@outlook.com>
#
generator = require('creditcard-generator')

module.exports = (robot) ->
  robot.respond /ccnum (d[sn]|vo|[amvje])(\s+\d+)*/i, (res) ->
    card = res.match[1]
    num = res.match[2]
    num = 1 if num is undefined
    if num < 1 or num > 20 # Why 20? No real reason. 20 should be enough in one go. Don't want to spam the channel.
        res.send "Please enter a number between 1 and 20 (inclusive)"
    else
        vals = generator.GenCC(get_command(card), num)
        formatted_values = vals.toString()
        formatted_values = formatted_values.replace /,/g, "\n"
        res.send formatted_values

  get_command = (input) ->
    input = input.toLowerCase()
    switch
        when input is "a" then "Amex"
        when input is "m" then "Mastercard"
        when input is "v" then "VISA"
        when input is "j" then "JCB"
        when input is "e" then "EnRoute"
        when input is "vo" then "Voyager"
        when input is "ds" then "Discover"
        when input is "dn" then "Diners"
        else ""
