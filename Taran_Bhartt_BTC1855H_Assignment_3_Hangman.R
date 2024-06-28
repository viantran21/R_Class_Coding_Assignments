# Assignment 3 - Hangman
# Taran Bhartt

# Prepare a dictionary of words to choose from and save it in a txt file (one column) and save it in the project directory
# Read the word list from your program.

# Choose a random element from the list. Hint: You may want to check sample() and sample.int()  functions. There are many different ways of doing this. You are welcome to experiment.

# Inform the user on the length of the secret word. Hint: You may test nchar()

# Inform the user about the number of wrong guesses/tries allowed. You decide on the rule here and implement it. Please comment your code appropriately.

# Ask for user input. The user is expected to enter one character only, check for this.


# Optional; check if the character is a letter
# Optional: make sure that both lower and upper case letters are acceptable and treated as equivalent


# Check to see if the user input is in the secret word.
# If yes, notify user and ask for next letter
# If not, notify user.
# If user has not exhausted the available tries, ask for the next letter.
# If tries are exhausted, notify user that they’ve lost. Reveal secret and exit.

# Make sure that your code never goes into an infinite loop, and always manages to exit gracefully (ie without throwing an error)
# Always notify the user about the correct letters/wrong letters, remaining tries.

# Additional functionality you may want to consider:
#   Provide the user with a visual clue of how they are progressing. E.g. if the secret word is “correct” and the user input is ‘c’, you may want to provide them with something like this:
#   C_ _ _ _ C _
# 
# You may want to give the user the option to guess the whole word when they want, instead of forcing the one-letter-at-a-time approach.


#-------------------------------------------------------------------------------
#' Plan
#' Pull a random word from a text document
#' Display the number of spaces to the user
#' While loop that keep track of the user's lives and if the word has been guessed
#'        Have the user input a letter one at a time OR give them the option to 
#'        guess the whole word
#'        
#'        if the user gets the letter right
#'            Replace the corresponding underscores with the letters
#'            Check to see if the user has guessed the word
#'            
#'        else
#'            Add a body part and remove a life
#'        
#' Exit loop
#' 
#' If the user guessed the word then congratulate them
#' Else hang the man
