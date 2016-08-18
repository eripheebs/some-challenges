var checkForPaligram = function(string){
  var countOfLetters = [];
  var oddCount = 0;
  _getLetterCount(string);
  _getOddCount(countOfLetters);
  return _YesOrNo(oddCount);

  function _getLetterCount(string){
    if (string.length > 1) {
      countOfLetters.push(string.split(new RegExp(string[0], "gi")).length-1);
      _getLetterCount(string.replace(new RegExp(string[0], "gi"), ""));
    } else {
      countOfLetters.push(string.length);
    }
  }

  function _getOddCount(array){
    array.forEach(function(item){
      if (_isOdd(item)) { oddCount += 1 };
    });
  }

  function _isOdd(number){
    return (number % 2 == 0) ? false : true
  }

  function _YesOrNo(count){
    if (count <= 1) { return 'YES' };
    return 'NO'
  }
}

module.exports = checkForPaligram;
