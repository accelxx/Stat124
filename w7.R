#### Question Number 1 ----
i <- 1
while (i <= 50 ) {
  if (i %% 6 == 0){
    print("BeepBoop")
  }else if (i %% 2 == 0){
    print("Beep")
  }else if (i %% 3 == 0){
    print("Boop")
  }else {
    print(i)
  }
  i <- i+1
}

#### Question Number 2 ----

star <- 0

repeat{       #Increasing Part
  star <- star+1
  if (star <= 6){}
  for (j in 1:star){
    cat("* ")
  }
  cat ("\n")
  if(star==6) break
}
repeat{      #Decreasing Part
  star <- star-1
  for (j in 1:star){
    cat("* ")
  }
  cat ("\n")
  if(star==1) break
}

#### Question Number 3 ----

og_word <- readline(prompt = "Input: ")

chars <- nchar(og_word)
set <- 1:chars
n <- 1
rev_word <- og_word

for (i in set){
  temp <- substr(og_word, chars, chars)
  substr(rev_word, i, i) <- temp
  chars <- chars-1
}

paste("The reverse of", og_word, "is", rev_word,".")

