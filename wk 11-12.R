# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland

#### Question number 1 -----

trianglr <- function(h){

  set1 <-  1:h 
  for(i in set1){
    for(j in 1:i){
      cat("* ")
    }
    cat("\n")
  }
  
  set2 <-  1:(h-1)
  for(k in set2){
    for(m in (h-1):k){
      cat("* ")
    }
    cat("\n")
  }
}

trianglr(10)

#### Question number 2 -----

trianglr <- function(h){

  if(is.numeric(h) == FALSE) {
    stop("Your input is invalid: h should be a positive integer from 2 to 10 only.")
  } else if(h != floor(h)) {
    stop("Your input is invalid: h should be a positive integer from 2 to 10 only.")
  } else if(h < 2 | h > 10) {
    stop("Your input is invalid: h should be a positive integer from 2 to 10 only.")
  }
  
  set1 <-  1:h 
  for(i in set1){
    for(j in 1:i){
      cat("* ")
    }
    cat("\n")
  }
  
  set2 <-  1:(h-1)
  for(k in set2){
    for(m in (h-1):k){
      cat("* ")
    }
    cat("\n")
  }
}

trianglr(10)

#### Question number 3 -----

trianglr <- function(h = 5){
  
  if(is.numeric(h) == FALSE) {
    stop("Your input is invalid: h should be a positive integer from 2 to 10 only.")
  } else if(h != floor(h)) {
    stop("Your input is invalid: h should be a positive integer from 2 to 10 only.")
  } else if(h < 2 | h > 10) {
    stop("Your input is invalid: h should be a positive integer from 2 to 10 only.")
  }
  
  set1 <-  1:h 
  for(i in set1){
    for(j in 1:i){
      cat("* ")
    }
    cat("\n")
  }
  
  set2 <-  1:(h-1)
  for(k in set2){
    for(m in (h-1):k){
      cat("* ")
    }
    cat("\n")
  }
}

trianglr()
