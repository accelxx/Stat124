#### Question Number 1

x<--5
if (x>0){
  cat(x, "is positive")
} else if(x<0){
   cat(x, "is negative")
} else{
   cat(x,"is zero")
}

#### Question Number 2 ----

a <- 1
b <- 5
c <- 1

d <- (b^2)-(4*a*c)

if (d>0){
  r1 <-(-b+sqrt(d))/(2*a)
  r2 <-(-b-sqrt(d))/(2*a)
  cat("The roots of the equation are ",round(r1,4),",",round(r2,4))
} else if (d == 0){
  r <- -b/(2*a)
  cat("Both roots of the equation are equal. Its value is ",round(r,4))
}

#### Question Number 3 ----

x <- 5
y <- 10
z <- 15

if(x>y){
  a <- x
} else {
  a <- y
}

if(a<z){
  a <- z
}

cat("The largest number is ", a)

#### Question Number 4
# Program 1: if-else/nested ifs
x <- 3L

if (x>=1 && x<=7 && is.integer(x)){
  if (x == 1){
    print("Sunday")
  } else if (x == 2){
    print("Monday")
  } else if (x == 3){
    print("Tuesday")
  } else if (x == 4){
    print("Wednesday")
  } else if (x == 5){
    print("Thursday")
  } else if (x == 6){
    print("Friday")
  } else if (x == 7){
    print("Saturday")
  }
} else {
  print("Invalid input.")
}

# Program 2: switch function
x <- 3.6

if (x>=1 && x<=7 && is.integer(x)){
  switch(x, "Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
} else {
  print("Invalid input.")
}

# Program 3: case_when

library(dplyr)

x<-3
case_when(
  x==1 ~ "Sunday",
  x==2 ~ "Monday",
  x==3 ~ "Tuesday",
  x==4 ~ "Wednesday",
  x==5 ~ "Thursday",
  x==6 ~ "Friday",
  x ==7 ~ "Sunday",
  TRUE ~ "Invalid input."
)

