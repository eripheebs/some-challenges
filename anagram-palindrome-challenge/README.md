### Instructions

- Given any string, write a function that will check to see if any anagram of the string is a palindrome.
- return 'YES' if there is a palindrome anagram or 'NO' otherwise.

#### My thoughts:
- First instinct was to write a method that checks for a palindrome, then iterate through every possible combo of letters and see if they match, but that didn't seem like the best solution, so had to think a while for a better one.
- So instead I thought we could count the number of times each letter popped up in the string, and store that in a seperate array, and then if there are more than 1 odd numbers in an array it wouldn't be a palindrome because you can only have one non-even reappearance of letters e.g. mOm.
