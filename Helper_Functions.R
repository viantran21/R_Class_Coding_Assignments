#' a bunch of useful functions
#' for the pieces of code that I never
#' want to write again

#-------------------------------------------------------------------------------
#' Function to accept user input
#' "a single character"
#' @name user_input_character
#' @param none
#' @output a single character

user_input_character <- function(){
  repeat{
    ans <- readline(prompt = "Please enter a single character: ")
    if (nchar(ans)==1){
    break
  } #if
  } #repeat
  return(ans)
} #function


#-------------------------------------------------------------------------------
#' Function to accept user input
#' "a number"
#' @name user_input_number
#' @param none
#' @output a single character

user_input_number <- function(){
  repeat{
    ans <- readline(prompt = "Please enter a number: ")
    if (!is.na(as.numeric(ans)) & nchar(ans)>0){
      break
    } #if
  } #repeat
  return(as.numeric(ans))
} #function