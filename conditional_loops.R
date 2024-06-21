# while and repeat loop examples

# while loop INFINITE

#i <- 1 #initialize the counter

#while (i < 3) {
#  print(i)
#}

# this will run forever. If you were to run this then a little stop button would pop up in the console, you could also press ctrl-c
#-------------------------------------------------------------------------------

# this is basically just a for loop with more steps
i <- 1

while (i <3){
  print(i)
  i <- i + 1
}
#-------------------------------------------------------------------------------

# repeat loop that counts from 1 to 30

j <- 1

repeat{
  print(j)
    j <- j + 1
  if (j > 30){
  break
  }
  }
