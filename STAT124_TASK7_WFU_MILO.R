# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland 

#### Question number 1 ------

set <- 1:50
for(var in set) {
  if (var %% 2 == 0 && var %% 3 == 0) {
    print("BeepBoop")
  } else if (var %% 3 == 0) {
    print("Boop")
  } else if (var %% 2 == 0) {
    print("Beep")
  } else {
    print(var)
  }
}

#### Question number 2 -----

star <- 1:11
for(s in star) {
  if (s == 1) {
    message("*")
  } else if (s == 2) {
    message("**")
  } else if (s == 3) {
    message("***")
  } else if (s == 4) {
    message("****")
  } else if (s == 5) {
    message("*****")
  } else if (s == 6) {
    message("******")
  } else if (s == 7) {
    message("*****")
  } else if (s == 8) {
    message("****")
  } else if (s == 9) {
    message("***")
  } else if (s == 10) {
    message("**")
  } else if (s == 11) {
    message("*")}
}

#### Question number 3 -----

word <- readline("Type a word")
word1 <- word
b <- nchar(word)
a <- 1
while (b>=a){
  c <- substr(word, b, b)
  d <- substr(word, a, a)
  substr(word, a, a) <- c
  substr(word, b, b) <- d
  a <- a+1
  b <- b-1
}
cat("The reverse of", paste(word1), "is", word, ".")