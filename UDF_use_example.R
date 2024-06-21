#' This is a fancy script that I am writing to bring world peace

#' The UDF in the name of this script refers to "User Defined Functions"
#' The functions that are made in the Helper_Functions script are accessible

source("Helper_Functions.R") #source pulls the functions into the environment
print("We need a magic character to solve hunger: ")

magic_char <- user_input_character()

print("We also need a magic number: ")

magic_number <- user_input_number()

print("The magic recipe is as follows: ")
for (i in 1:magic_number){
  print(magic_char)
}
print("Magic isn't real but hunger is, sorry")