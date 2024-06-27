# Regex (Regular Expressions) examples

library(stringr)

sentence <- "this is the first line of 2.\nThis is the second."
phrase <- c("hello","darkness","my old","friend.","The","end.")

str_view(sentence, pattern = "e")
str_view(sentence, pattern = "[aeiou]")
str_view(sentence, pattern = "[e-l]")
str_view(sentence, pattern = "[\\.]$") #this requires escape characters, 
                                       #' and an escape character for the 
                                       #' escape character

str_view(phrase, pattern = "[d]$") #' goes through the vector and grabs lines 
                                   #' that end in a d

str_view(sentence, pattern = "[.]") #in stringr, this can work to grab only periods
                                    #but normally it is the same as this:
str_view(sentence, pattern = ".")   #here it returns every character

str_view(sentence, pattern = "\\d") #this finds the digit character "2"
str_view(sentence, pattern = "\\W") #the non-word characters of spaces, punctuation, and a newline


emails <- c("john.do@uni.edu", "jane.doe@someplace.ca", "invalid.ca", "_@notvalid",
            "notvalid@fake", "big.bird@sesame.tv", "notused@", "@notvalid.ca",
            "fake@fake.fakest0", "fake@some.p", "fake@fake.f0akest")
emails

#has an @ sign
str_view(emails, "@")

#has account before @
str_view(emails,".+@")

#has an account name that is an alphanumeric character
str_view(emails,"[A-Za-z0-9]+@")

#has an email hub
str_view(emails,"[A-Za-z0-9]+@[A-Za-z0-9]+")

#has to have a period
str_view(emails,"[A-Za-z0-9]+@[A-Za-z0-9]+\\.")

#has to have a valid domain extension (lowercase 2 to 4 characters)
str_view(emails,"[A-Za-z0-9]+@[A-Za-z0-9]+\\.[a-z]{2,4}")

#has to not only identify which have 2-4 characters, but exclude those with more
str_view(emails,"[A-Za-z0-9]+@[A-Za-z0-9]+\\.[a-z]{2,4}\\z")

