# hubot-credit-card-number-generator

[![Build Status](https://travis-ci.org/MonicaG/hubot-credit-card-number-generator.svg?branch=master)](https://travis-ci.org/MonicaG/hubot-credit-card-number-generator)

A hubot script that uses [creditcard-generator](https://github.com/VRMink/credit-card-generator) to generate test credit card numbers that pass the Luhn check.

See [`src/credit-card-number-generator.js`](src/credit-card-number-generator.js) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-credit-card-number-generator --save`

Then add **hubot-credit-card-number-generator** to your `external-scripts.json`:

```json
[
  "hubot-credit-card-number-generator"
]
```

## Usage

```
hubot ccnum [cctype] [num] - responds with test credit card numbers. cctype is one of: a|m|v|j|e|vo|dn|ds . Optionally, specify a number and it will return n card numbers.
```

|cctype|Description|
|-------|-----------|
| a  | American Express|
| dn | Diners Card |
| ds | Discover Card |
| e  | enRoute Card |
| j  | JCB Card |
| m  | Master Card |
| v  | Visa Card |
| vo | Voyager Card |

## Sample Interaction

```
user1>> hubot ccnum v 4
hubot>> 4072032880843113
4485046733373962
4916610646721325
4916721612089579
```

## License

GNU GPL [https://gnu.org/licenses/gpl.html](https://gnu.org/licenses/gpl.html)

## Contributing

Pull requests are welcome! Please see the [CONTRIBUTING file](CONTRIBUTING.md) for details.
 
