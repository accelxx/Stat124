# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland

#### Question number 1 -----

x <- -5
if (x > 0) {
  cat(x, "is positive")
} else if (x < 0) {
  cat(x, "is negative")
}

#### Question number 2 -----

a <- 1
b <- 5
c <- 1
d <- b^2 - (4*a*c)
e <- -b/(2*a)

if (d == 0) {
  root1 <- e;
  cat("The root is is", round(e, digits = 4))
} else if (d > 0) {
  root1 <- e + (sqrt(d)/(2*a));
  root2 <- e - (sqrt(d)/(2*a));
  cat("The roots are", round(root1, digits = 4), "and", round(root2, digits = 4))
} else if (d < 0) {
  cat("This quadratic equation has no real roots")
}

#### Question number 3 -----

x <- 5
y <- 10
z <- 15

if (x > y) {
  max <- x
} else {max <- y}
if (max > z) {
  cat("The largest number is", max)
} else if (max < z) {
  max <- z; cat("The largest number is", max)
}

#### Question number 4 ----

#if-else/nested if

x <- 3.1

if (x == 1) {print("Sunday")
} else if (x == 2) {print("Monday")
} else if (x == 3) {print("Tuesday")
} else if (x == 4) {print("Wednesday")
} else if (x == 5) {print("Thursday")
} else if (x == 6) {print("Friday")
} else if (x == 7) {print("Saturday")
} else {print("Invalid input")}

#switch

x <- 3L

if(x == 1 || x == 2 || x == 3 || x == 4 || x == 5 || x == 6 || x == 7) {
  switch (x, "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
} else if(x < 1 || x > 7 || is.integer(x) == 0) {
  cat("Invalid input")
}

#case_when

library(dplyr)
x <- 3.6

case_when(
  x == 1 ~ "Sunday",
  x == 2 ~ "Monday",
  x == 3 ~ "Tuesday",
  x == 4 ~ "Wednesday",
  x == 5 ~ "Thursday",
  x == 6 ~ "Friday",
  x == 7 ~ "Saturday",
  x < 1 || x > 7 || is.integer(x) == 0 ~ "Invalid input"
)
