# Function examples

my_1st_function <- function(){
  print("Hello World")
  print("Have you heard the song,'Hello World', by Louie ZOng? It's pretty damn good")
}

#call my function
my_1st_function()

my_2nd_function <- function(x){
  print(paste("By the way, the square of", x, "is", x**2))
}

my_2nd_function(2)

my_3rd_function <- function(x=1){
  x_sqr <- sqrt(x)
  return(x_sqr)
}

my_3rd_function(4)
