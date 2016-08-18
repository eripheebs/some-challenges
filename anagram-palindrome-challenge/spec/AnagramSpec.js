describe('Anagram Palindrome Function', function(){
  var checkForPaligram = require('../lib/Anagram.js');

  it('expects YES when there is a palindrome anagram', function(){
    expect(checkForPaligram('aaabbbb')).toEqual('YES');
  });

  it('is case insensitive', function(){
    expect(checkForPaligram('aaAbbbb')).toEqual('YES');
  });

  it('expects NO when there is no palindrome anagram', function(){
    expect(checkForPaligram('aaabbbbb')).toEqual('NO');
  });

});
