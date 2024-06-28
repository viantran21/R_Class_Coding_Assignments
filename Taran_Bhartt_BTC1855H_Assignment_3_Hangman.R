# Assignment 3 - Hangman 🦖
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


# TO THE USER: DOWNLOAD THE "stringi" PACKAGES IF YOU DO NOT ALREADY HAVE IT
# install.packages("stringi") #load the stringi package for usage in replacing letters
# Ensure that "Hangman_Words.txt" is downloaded to the working directory

Jigsaw <- "YES" #initialize the value of Jigsaw when going into the while loop

while (Jigsaw=="YES") { #setup the while loop (1) that will circulate the user for as long as they want to play
  Jigsaw <- readline(prompt = "Would you like to play a game?\nEnter YES is so, press anything else if not.") #see if the user actually wants to play
  if (Jigsaw=="YES"){ #if the user wants to play then...
    print("Welcome to Hangman. You have 6 lives to try and guess a word. Good luck!")
    lives <- 6 #setup how many lives they have
    SecretWordList <- read.delim("Hangman_Words.txt") #read the list of words
    GuessWord <- "▯" #spreet the value of guessword so that it can be used in the conditional while loop
    SecretWord <- SecretWordList[sample(nrow(SecretWordList), 1), ] #randomly select a word from the secret list
    SecretWord <- tolower(SecretWord) #set the word to lowercase
    GuessWord <- paste(replicate(nchar(SecretWord), "▯"), collapse = "")# create a character that will serve as a representation of the secret word to the user, and will store their guesses
    WrongGuess <- "" #preset the wrong guess so that it can be added to in the running list of wrong guesses
    
    while (lives > 0 & SecretWord != GuessWord){ #while loop (2) that is the main game, where the user circulates until they guess the word or die
        #cat("\014") 
        print("")
        print(paste("The secret word is", nchar(SecretWord), "letters long: ", GuessWord,"You have already guessed",WrongGuess))
        GuessLetter <- readline("Take a guess as to the secret word, or just guess a letter: ")
        if (!grepl("[A-Za-z]", GuessLetter)){ #make sure that the user is inputting a letter
          print("Please enter a letter")
          lives <- lives + 1 #increase the user's lives to counteract the fact that a number will cost them a life. This means that the code doesn't penalize typing in non-letters
        }
        GuessLetter <- tolower(GuessLetter) #set the guessed letter to lowercase to prevent mismatch due to the user simply holding down the shift key
        
        if (nchar(GuessLetter)>1){ #if they are attempting to guess the whole word
          if (GuessLetter == SecretWord){ #did they get it right and guess the whole word
            GuessWord <- SecretWord #if the user guessed the word, then update GuessWord
        }else{ #if they failed to guess the whole word
          lives <- lives-1 #since the user failed, remove a life
        }
        } else{ #if they are just trying one letter at a time
        LetterPosition <- unlist(gregexpr(GuessLetter, SecretWord)) #determine what the position of the letter is in SecretWord, if it is there at all
        if (LetterPosition[1]>0){ #if the letter is actually part of the word then change GuessLetter
          stringi::stri_sub_all(GuessWord, from = LetterPosition, length = 1) <- GuessLetter
        } else{ #otherwise you lose lives. The user is sent into this "else" if LetterPosition = -1, which is a possible value if the letter is not in SecretWord
          lives <- lives-1
          print("Wrong guess")
          WrongGuess <- paste(WrongGuess,GuessLetter) #add the wrong guess to the running list of wrong guesses
        }
        }
        
        #Artwork to be displayed depending on the lives
        if (lives==6){
          cat("
    ---------
    |       |
    |       |
            |
            |
            |
            |
            |
            |
            |
            |
            |
           ---")
        } else if (lives==5){
          cat("
    ---------
    |       |
    |       |
  {0 0}     |
    &       |
            |
            |
            |
            |
            |
            |
            |
           ---")
        } else if (lives==4){
          cat("
    ---------
    |       |
    |       |
  {0 0}     |
    &       |
   | |      |
   | |      |
            |
            |
            |
            |
            |
           ---")
        } else if (lives==3){
          cat("
    ---------
    |       |
    |       |
  {0 0}     |
    &       |
  /| |      |
 / | |      |
            |
            |
            |
            |
            |
           ---")
        } else if (lives==2){
          cat("
    ---------
    |       |
    |       |
  {0 0}     |
    &       |
  /| |\\     |
 / | | \\    |
            |
            |
            |
            |
            |
           ---")
        } else if (lives==1){
          cat("
    ---------
    |       |
    |       |
  {0 0}     |
    &       |
  /| |\\     |
 / | | \\    |
   <=>      |
   |        |
   |        |
   ^        |
            |
           ---")
        }
        
    } # while loop (2)
    if (SecretWord==GuessWord){
      print(paste("Congratulations! You guessed the word", SecretWord,"!"))
      cat("
    ---------
    |       |
    |       |
    &       |
            |
 \\{0 0}/    |
  \\ | /     |
   | |      |
   | |      |
   <=>      |
   | |      |
   | |      |
   ^ ^     ---")
    } else{
      print(paste("Sorry, you could not figure out the secret word. It was", SecretWord))
      cat("
    ---------
    |       |
    |       |
  {X X}     |
    &       |
  /| |\\     |
 / | | \\    |
   <=>      |
   | |      |
   | |      |
   ^ ^      |
            |
           ---")
    }
    
  } else { #if statement for if the user wants to play the game
    print("Alright, nevermind then...")
  }
} # while loop (1)

