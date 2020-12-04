# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland

#### Question Number 1 ----

trianglr <- function(h){
  
  star <- 0
  
  #Increasing Part
  repeat{       
    star <- star+1
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==h) break
  }
  
  #Decreasing Part
  repeat{      
    star <- star-1
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==1) break
  }
}

trianglr (10)

#### Question Number 2 ----

trianglr <- function(h){
  
  star <- 0
  
  #Input Validation
  if(is.numeric(h) == FALSE) {
    stop("Your input is invalid: h should be a positive integer from 2 to 10 only.")
  } else if(h != floor(h)) {
      stop("Your input is invalid: h should be a positive integer from 2 to 10 only.")
  } else if(h < 2 | h > 10) {
      stop("Your input is invalid: h should be a positive integer from 2 to 10 only.")
  }
  
  #Increasing Part
  repeat{       
    star <- star+1
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==h) break
  }
  
  #Decreasing Part
  repeat{      
    star <- star-1
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==1) break
  }
}

trianglr (10)

#### Question Number 3 ---- 

# Setting the default value as h = 5
trianglr <- function(h = 5){
  
  star <- 0
  
  #Input Validation
  if (is.numeric(h) == FALSE || h != floor(h)){
    stop("Input is invalid. It should be an integer less than or equal to 10 
               but greater than or equal to 2.")
  } else if (h>10 || h<2){
    stop("Input is invalid. It should be an integer less than or equal to 10 
               but greater than or equal to 2.")
  }
  
  #Increasing Part
  repeat{       
    star <- star+1
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==h) break
  }
  
  #Decreasing Part
  repeat{      
    star <- star-1
    for (j in 1:star){
      cat("* ")
    }
    cat ("\n")
    if(star==1) break
  }
}


trianglr ()