=begin
1. A method that returns the sum of two integers

START

GET two integers as parameters passed to our method

SET a sum variable to store the sum of two integers passed

RETURN our sum ariable

END

2. A method that takes an array of strings, and returns a string that is all those strings concatenated together

START

GET array of strings as parameter passed to our method

SET a new string variable to equal to the string elements in our array, joined together

RETURN this new string variable from the method

END

3. A method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element

START

GET array of integers as parameter passed to our method
SET a new empty array to store our output

Iterate through each element in this integer
IF the element has an even index number, then append this element to our new array
ELSE continue iterating to the next element

Return our new array, exiting the method

END

4. A method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return the 6 (the index of the 3rd 'x') if the given character does not occur at least 3 times, return nil

START

GET two string arguments as parameters to our method, one for the character we're looking for and one for the string we want to look within

SET a counter variable at value 0

Iterate through each character of the string we're passed, keeping track of the index of each character we're iterating through

IF the character from the string we're iterating through matches the character we're looking for, then increment our counter variable by 1

IF our counter variable reaches 3, then exit our method and return the current index value

ELSE keep iterating to the next character

END

5. A method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indeces of the returned array, while the elements of the second array should become the elements at the odd indexes. You may assume that both array arguments have the same number of elements

START

GET the two array variables passed as arguments to our method

SET a new empty array variable to store our output

Iterate through either of our two starting arrays, while keeping track of the index
With each iteration, first append the current element from the first array to our output array, then append the current element from the second array to our output array
Keep iterating until all elements from both starting arrays have been added to our output array

Return from our method and pass the output array

END

=end