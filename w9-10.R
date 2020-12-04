
#### Question Number 1 ----
violence <- read.csv("dviolence.csv")
View(violence)

## A.
SexInter <- rep(NA, 73)
SexInter[violence$SuspectSex == "Male" & violence$VictimSex == "Female"] <- "Male On Female"
SexInter[violence$SuspectSex == "Male" & violence$VictimSex == "Male"] <- "Male On Male"
SexInter[violence$SuspectSex == "Female" & violence$VictimSex == "Female"] <- "Female On Female"
SexInter[violence$SuspectSex == "Female" & violence$VictimSex == "Male"] <- "Female On Male"

violence <- data.frame(violence, SexInter)

## B.
Relationship2 <- rep(NA, 73)
Relationship2[violence$Relationship == "Victim was Ex-Spouse" | 
                violence$Relationship == "Victim was Boyfriend/Girlfriend - BG" |
                violence$Relationship == "Victim was Spouse"] <- "Lover/Ex-lover"
Relationship2[violence$Relationship == "Victim was Parent" | 
                violence$Relationship == "Victim was Child" |
                violence$Relationship == "Victim was Other Family Member"] <- "Family Member"
Relationship2[violence$Relationship == "Victim was Offender"] <- "Offender"
Relationship2[violence$Relationship == "Victim was Friend" | 
                violence$Relationship == "Victim was Aquaintance" |
                violence$Relationship == "Victim was Otherwise Known"] <- "Others"
Relationship2[violence$Relationship == "Relationship Unknown"] <- "Unkown"

violence <- data.frame(violence, Relationship2)

## C.
violence <- subset(violence, select = -c(Relationship))

#### Question Number 2 ----

## A.
Others <- subset(violence, select= c(VictimAge, SuspectAge), Relationship2 == "Others")

## B.

Minors <- subset(violence, select= c(VictimAge, SuspectAge, Offense, SexInter), VictimAge < 18)