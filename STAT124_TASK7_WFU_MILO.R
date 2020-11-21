# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland 

#### Question number 1 ----

num <- 1
while (num <= 50) {
  if (num %% 2 == 0 && num %% 3 == 0) {
    cat('"','BeepBoop', '"', sep="")
  } else if (num %% 3 == 0) {
    cat('"','Boop', '"', sep="")
  } else if (num %% 2 == 0) {
    cat('"','Beep', '"', sep="")
  } else {
    cat(num)
  }
  cat("\n")
  num <- num+1
}

#### Question Number 2 ----
pattern <- function(){
  
# Upper half
  set1 <-  1:6 
  for(i in set1){
    for(j in 1:i){
      cat("* ")
    }
    cat("\n")
  }
  
# Lower half
  set2 <-  1:5
  for(k in set2){
    for(m in 5:k){
      cat("* ")
    }
    cat("\n")
  }
}

pattern ()

#### Question Number 3 ----

reverse <- function (){
  og_word <- readline(prompt = "Input: ")
  
# The for loop below will reverse the original word by replacing the ith
# character in the string by its nth character.

  n <- nchar(og_word)
  set <- 1:n
  rev_word <- og_word
  
  for (i in set){
    temp <- substr(og_word, n, n)
    substr(rev_word, i, i) <- temp
    n <- n-1
  }
  
  message("The reverse of ", og_word, " is ", rev_word,".")
}

reverse ()
