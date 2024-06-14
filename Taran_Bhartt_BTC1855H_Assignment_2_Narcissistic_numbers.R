#' 1. Prompt the user to enter a three digit positive number
#' Plan: 
#'       Prompt the user to input a 3 digit positive number using the readline function
UserNumber <- readline(prompt = "Input a three digit number: ")

#' 2. Check if the user input is numeric. If not, print an error message and quit.
#' Plan: 
#'       Check if the user actually input a 3 digit positive number
#'       if T
#'          Convert the user input into a numeric value
#'       else
#'          Write an error message

if ((as.numeric(UserNumber))>0 & (nchar(UserNumber))==3){
  # determine if the User Input is a positive number of 3 digits
  UserNumber <- as.numeric(UserNumber)
  print(paste("You entered", UserNumber)) # determine if the input value is a 3 digit positive number
} else if (is.na(as.numeric(UserNumber))){
  # determine if the User Input is a secret NA
  print("Please enter a number instead of an NA") # determine if the input is an NA
} else {
  print("You did not input a three digit positive number") # if it is a non-three digit number, tell them to reinput the number
} # 

#' 3. Check if the number is narcissistic. A narcissistic number, or an Armstrong
#'    number, is a number that is equal to the sum of the cubes of its own digits. 
#'    153, 370, 371, 407 are three digit Armstrong numbers.
#' plan: 
#'      Break up the number
#'      Check if the number is an Armstrong number

#' 4. Display the result with an appropriate message, e.g. 
#'    “127 is not an Armstrong number” or “370 is a narcissistic number” 
#'    or any additional fun text you may want to add.
#' plan: 
#'      Use the print and paste function to display the message
#'      Include a function to restart the program or press a key to escape

