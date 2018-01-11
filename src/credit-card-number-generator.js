// Description
//   A hubot script that uses creditcard-generator to create test credit card numbers that pass the Luhn check.
//
// Configuration:
//   None
//
// Commands:
//   hubot ccnum [cctype] [num] - responds with test credit card numbers. cctype is one of: a|m|v|j|e|vo|dn|ds. Optionally, specify a number and it will return n card numbers.
//
// Notes:
//   cctype is one of:
//   a  = American Express
//   dn = Diners Card
//   ds = Discover Card
//   e  = enRoute Card
//   j  = JCB Card
//   m  = Master Card
//   v  = Visa Card
//   vo = Voyager Card
//
// Dependencies:
//   creditcard-generator
//
// Author:
//   Monica Granbois <mgranbois@outlook.com>
//
const generator = require('creditcard-generator');

module.exports = function(robot) {
  let get_command;
  robot.respond(/ccnum (d[sn]|vo|[amvje])(\s+\d+)*/i, function(res) {
    const card = res.match[1];
    let num = res.match[2];
    if (num === undefined) { num = 1; }
    if ((num < 1) || (num > 20)) { // Why 20? No real reason. 20 should be enough in one go. Don't want to spam the channel.
      return res.send("Please enter a number between 1 and 20 (inclusive)");
    } else {
      const vals = generator.GenCC(get_command(card), num);
      let formatted_values = vals.toString();
      formatted_values = formatted_values.replace(/,/g, "\n");
      return res.send(formatted_values);
    }
  });

  return get_command = function(input) {
    input = input.toLowerCase();
    cctype = "";
    switch (input) {
      case "a":
        cctype = "Amex";
        break;
      case "m":
        cctype = "Mastercard";
        break;
      case "v":
        cctype = "VISA";
        break;
      case "j":
        cctype = "JCB";
        break;
      case "e":
        cctype = "EnRoute";
        break;
      case "vo":
        cctype = "Voyager";
        break;
      case "ds":
        cctype = "Discover";
        break;
      case "dn":
        cctype = "Diners";
        break;
      default:
        cctype = "";
        break;
    }
    return cctype;
  };
};
