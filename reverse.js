const readline = require('readline');
const terminal= readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function reverseString(str) {
  var newString = "", i=str.length -1;
  for (; i >= 0; i--) {
    newString = newString + str.charAt(i);
  }
  return newString;
}

terminal.on('line', function (line) {
  var reverse = reverseString(line);
  terminal.write(reverse);
});
