const Helper = require('hubot-test-helper');
const helper = new Helper('../src/credit-card-number-generator.js');
const expect = require('chai').expect
const co = require('co');

const visa_regex = /^4\d{15}$/;
const master_card_regex = /^5\d{15}$/;
const amex_regex = /^3[47]\d{13}$/;
const diner_regex = /^3((00|01|02|03)\d{13}|[68]\d{14})$/;
const discover_regex = /^6011\d{12}$/;
const enRoute_regex = /^2\d{15}$/;
const jcb_regex = /^35\d{14}$/;
const voyager_regex = /^8699\d{12}$/;

describe('credit-card-number-generator', function() {
  beforeEach(function() {
    this.room = helper.createRoom();
  });
  afterEach(function() {
    this.room.destroy();
  });


  context('hubot is requested to generate visa card numbers - lower case v', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum v');
      }.bind(this));
    });

    it('will respond to v', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum v'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(visa_regex);
    });
  });

  context('hubot is requested to generate visa card numbers - upper case V', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum V');
      }.bind(this));
    });

    it('will respond to V', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum V'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(visa_regex);
    });
  });

  context('hubot is requested to generate master card numbers - lower case m', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum m');
      }.bind(this));
    });

    it('will respond to m', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum m'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(master_card_regex);
    });
  });

  context('hubot is requested to generate master card numbers - upper case M', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum M');
      }.bind(this));
    });

    it('will respond to M', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum M'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(master_card_regex);
    });
  });

  context('hubot is requested to generate american express numbers - lower case a', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum a');
      }.bind(this));
    });

    it('will respond to a', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum a'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(amex_regex);
    });
  });

  context('hubot is requested to generate american express numbers - upper case A', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum A');
      }.bind(this));
    });

    it('will respond to A', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum A'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(amex_regex);
    });
  });


  context('hubot is requested to generate diner card numbers - lower case dn', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum dn');
      }.bind(this));
    });
    it('will respond to dn', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum dn'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(diner_regex);
    });
  });

  context('hubot is requested to generate diner card numbers - upper case DN', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum DN');
      }.bind(this));
    });

    it('will respond to DN', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum DN'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(diner_regex);
    });
  });


  context('hubot is requested to generate diner card numbers - mixed case Dn', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum Dn');
      }.bind(this));
    });

    it('will respond to Dn', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum Dn'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(diner_regex);
    });
  });


  context('hubot is requested to generate diner card numbers - mixed case dN', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum dN');
      }.bind(this));
    });
    it('will respond to dN', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum dN'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(diner_regex);
    });
  });

  context('hubot is requested to generate discover card numbers - lower case ds', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum ds');
      }.bind(this));
    });
    it('will respond to ds', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum ds'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(discover_regex);
    });
  });

  context('hubot is requested to generate discover card numbers - upper case DS', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum DS');
      }.bind(this));
    });
    it('will respond to DS', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum DS'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(discover_regex);
    });
  });

  context('hubot is requested to generate discover card numbers - mixed case Ds', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum Ds');
      }.bind(this));
    });
    it('will respond to Ds', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum Ds'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(discover_regex);
    });
  });

  context('hubot is requested to generate discover card numbers - mixed case dS', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum dS');
      }.bind(this));
    });
    it('will respond to dS', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum dS'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(discover_regex);
    });
  });

  context('hubot is requested to generate enRoute card numbers - lower case e', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum e');
      }.bind(this));
    });
    it('will respond to e', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum e'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(enRoute_regex);
    });
  });

  context('hubot is requested to generate enRoute card numbers - upper case E', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum E');
      }.bind(this));
    });
    it('will respond to E', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum E'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(enRoute_regex);
    });
  });

  context('hubot is requested to generate jcb card numbers - lower case j', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum j');
      }.bind(this));
    });
    it('will respond to j', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum j'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(jcb_regex);
    });
  });

  context('hubot is requested to generate jcb card numbers - upper case J', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum J');
      }.bind(this));
    });
    it('will respond to J', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum J'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(jcb_regex);
    });
  });

  context('hubot is requested to generate voyager card numbers - lower case vo', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum vo');
      }.bind(this));
    });
    it('will respond to vo', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum vo'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(voyager_regex);
    });
  });

  context('hubot is requested to generate voyager card numbers - upper case VO', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum VO');
      }.bind(this));
    });
    it('will respond to VO', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum VO'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(voyager_regex);
    });
  });

  context('hubot is requested to generate voyager card numbers - mixed case Vo', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum Vo');
      }.bind(this));
    });
    it('will respond to Vo', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum Vo'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(voyager_regex);
    });
  });

  context('hubot is requested to generate voyager card numbers - mixed case vO', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum vO');
      }.bind(this));
    });
    it('will respond to vO', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum vO'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(voyager_regex);
    });
  });



  context('hubot responds to request for multiple credit card numbers ', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum v 3');
      }.bind(this));
    });
    it('will respond with multiple ccnumbers when a number is provided', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum v 3'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      const ccnums = this.room.messages[1][1].split("\n");
      ccnums.map((num) => expect(num).to.match(visa_regex));
    });
  });

  context('hubot responds with an error message when more then 20 credit card numbers are requested', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum v 21');
      }.bind(this));
    });
    it('will respond with error message when a number greater than 20 is provided', function() {
      expect(this.room.messages).to.eql([
        ['jane', 'hubot ccnum v 21'],
        ['hubot', 'Please enter a number between 1 and 20 (inclusive)']
      ]);
    });
  });

  context('hubot responds with an error message when 0 credit card numbers are requested', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum v 0');
      }.bind(this));
    });

    it('will respond with error message when a number less than 1 is provided', function() {
      expect(this.room.messages).to.eql([
        ['jane', 'hubot ccnum v 0'],
        ['hubot', 'Please enter a number between 1 and 20 (inclusive)']
      ]);
    });
  });

  context('hubot responds with 20 ccnumbers when 20 are requested (upper bounds checking)', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum v 20');
      }.bind(this));
    });
    it('will respond when 20 ccnumbers are requested', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum v 20'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      const ccnums = this.room.messages[1][1].split("\n");
      expect(ccnums.length).to.equal(20);
    });
  });

  context('hubot responds with 1 ccnumber when 1 is requested (lower bounds checking)', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum v 1');
      }.bind(this));
    });

    it('will respond when 1 ccnumber is requested', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum v 1'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(visa_regex);
    });
  });

  context('hubot responds with 1 ccnumber when the number provided is not a number', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum v asdf');
      }.bind(this));
    });
    it('will respond with one ccnumber when number is bad', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum v asdf'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(visa_regex);
    });
  });

  context('hubot responds with 1 ccnumber when the number provided is alpha-numeric', function() {
    beforeEach(function() {
      return co(function*() {
        yield this.room.user.say('jane', 'hubot ccnum v v4');
      }.bind(this));
    });
    it('will respond with one ccnumber when number is bad', function() {
      expect(this.room.messages.length).to.equal(2);
      expect(this.room.messages[0]).to.eql([
        'jane', 'hubot ccnum v v4'
      ]);
      expect(this.room.messages[1][0]).to.eql('hubot');
      expect(this.room.messages[1][1]).to.match(visa_regex);
    });
  });
});
