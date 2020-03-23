const assert = require('assert');
const { Given, When, Then } = require('cucumber');

function isItFriday1(today) {
  if (today === "Friday") {
    return "TGIF";
  } else {
    return "Nope";
  }
}

Given('today is {string}!', function (givenDay) {
  this.today = givenDay;
});

When('I ask whether it\'s Friday or not', function () {
  this.actualAnswer = isItFriday1(this.today);
});

Then('I should be told {string}!!', function (expectedAnswer) {
  assert.equal(this.actualAnswer, expectedAnswer);
});