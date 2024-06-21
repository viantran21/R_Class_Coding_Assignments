# for loop examples

# simple for loop

myseq <- seq(1,5)

for (i in myseq){
  print(paste("Counter:", i, "   Value", myseq[i]))
}

# Different ways of iterating over a loop
myseq2 <- c("a","b","c","d","e")
# iterate over actual elements-no index value is available
for (i in myseq2){
  print(paste("Counter:", i, "   Value", myseq2[i]))
}

# iterate over indexs
for (i in seq_along(myseq2)){ #seq_along creates a sequence the length of another given sequence
  print(paste("Counter:", i, "   Value", myseq2[i]))
}

# NOT equivalent to above
for (i in length(myseq2)){ # while this would work on the numerical myseq, the string myseq is considered to be a single string, and so length returns a single 5, not a range
  print(paste("Counter:", i, "   Value", myseq2[i]))
}

# equivalent to above
for (i in 1:length(myseq2)){ # by creating a range, length is usable
  print(paste("Counter:", i, "   Value", myseq2[i]))
}

