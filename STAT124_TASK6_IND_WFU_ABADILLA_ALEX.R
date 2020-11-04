
#### Question no. 1----
x<-4
if (x>0){cat(x, "is positive")
}else if(x<0) {cat(x, "is negative")}

#### Question no. 2----
a<-1
b<-5
c<-1
d<-(b^2)-(4*a*c)
r1<-(-b+sqrt(d))/(2*a)
r2<-(-b-sqrt(d))/(2*a)
cat("The roots are", round(r1, digits = 4), "and",round(r2, digits = 4))

#### Question no. 3----
x<-5
y<-4
z<-8
max<-x
if (max<y) {max<-y
}else if (max<z){max<-z
}
cat("The largest number is", max)

#### Question no. 4----
#if-else/nested ifs
int<-3.6
if(int>=1&&int<=7&&is.integer(int)){
  if(int==1){
    print("Sunday")
  } else if(int==2){
    print("Monday")
  } else if(int==3){
    print("Tuesday")
  } else if(int==4){
    print("Wednesday")
  } else if(int==5){
    print("Thursday")
  } else if(int==6){
    print("Friday")
  } else if(int==7){
    print("Saturday")
  }
} else message("INVALID INPUT")

#switch
int<-6L
if(int<1||int>7||is.integer(int)==0){
  message("INVALID INPUT")
} else{
  switch(int, "Sunday", "Monday", "Tuesday", "Wednesday","Thursday", "Friday", "Saturday")}

#case-when
int<-6.9
case_when(
  (int<1||int>7||is.integer(int)==0) ~ "INVALID INPUT",
  int==1 ~ "Sunday",
  int==2 ~ "Monday",
  int==3 ~ "Tuesday",
  int==4 ~ "Wednesday",
  int==5 ~ "Thursday",
  int==6 ~ "Friday",
  int==7 ~ "Sunday",
)