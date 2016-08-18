describe('Anagram Palindrome Function', function(){
  var checkForPaligram = require('../lib/Anagram.js');

  it('expects YES when there is a palindrome anagram', function(){
    expect(checkForPaligram(['a', 'a', 'a', 'b', 'b', 'b', 'b'])).toEqual('YES');
  });

  it('expects NO when there is no palindrome anagram', function(){
    expect(checkForPaligram(['a', 'a', 'a', 'b', 'b', 'b'])).toEqual('NO');
  });

});
