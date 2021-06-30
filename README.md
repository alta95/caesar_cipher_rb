# caesar_cipher_rb

#TheOdinProject-RubyAssignment 01

Will ask 3 input: text to encrypt(str), shift direction (left/right), number of shift (int)
Will keep asking until input with correct type entered

Step:
-Validate input
-Create empty output
-Foreach input, turn into decimal, then,
-If it's not alphabet, revert to char, push into output
-For alphabet, check if uppercase/lowercase, then
-For alphabet add/subtract its decimal by number of shift and its direction
-If result within alphabet range, revert to char, push into output
-If not, keep add/subtract by 26 until within range, then revert to char, push into output
-Print the output
