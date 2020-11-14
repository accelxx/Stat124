#### Question no. 1----
for(i in 1:50){
  if(i%%2==0&&i%%3==0){print("BeepBoop")
  }else if(i%%2==0){print("Beep")
  }else if(i%%3==0){print("Boop")
  }else {print(i)
  }
}

#### Question no. 2----
pattern <- function(){
for(i in 1:6){
  for(j in 1:i){
    cat("*")
  }
  cat("\n")
}
for(k in 1:5){
  for(m in 5:k){
    cat("*")
  }
  cat("\n")
}
}
  
#### Question no. 3----
fun <- function(){
word <- readline("What word would you like to enter? ")
rev_word<-substring(word, nchar(word):1, nchar(word):1)
cat("The reverse of", word, "is", paste(rev_word, collapse = ""),".")
}
