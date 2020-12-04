# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland

#### Question no. 1----
####a
dviolence <- read.csv("dviolence.csv")

#creates a placeholder vector
SexInter <- rep(NA, 73)

#assigns values based on logical expressions that involve interaction between suspect's sex and victim's sex
SexInter[dviolence$SuspectSex=="Male" & dviolence$VictimSex=="Male"] <-  "Male on Male"
SexInter[dviolence$SuspectSex=="Female" & dviolence$VictimSex=="Female"] <-  "Female on Female"
SexInter[dviolence$SuspectSex=="Male" & dviolence$VictimSex=="Female"] <-  "Male on Female"
SexInter[dviolence$SuspectSex=="Female" & dviolence$VictimSex=="Male"] <-  "Female on Male"


dviolence <- data.frame(dviolence, SexInter)

####b
#creates a placeholder vector
Relationship2 <- rep(NA, 73)

#assigns values based on logical expressions that combines similar relationship categories into one category
Relationship2[dviolence$Relationship == "Victim was Ex-Spouse" | 
                dviolence$Relationship == "Victim was Boyfriend/Girlfriend - BG" |
                dviolence$Relationship == "Victim was Spouse"] <- "Lover/Ex-lover"
Relationship2[dviolence$Relationship == "Victim was Parent" | 
                dviolence$Relationship == "Victim was Child" |
                dviolence$Relationship == "Victim was Other Family Member"] <- "Family Member"
Relationship2[dviolence$Relationship == "Victim was Offender"] <- "Offender"
Relationship2[dviolence$Relationship == "Victim was Friend" | 
                dviolence$Relationship == "Victim was Aquaintance" |
                dviolence$Relationship == "Victim was Otherwise Known"] <- "Others"
Relationship2[dviolence$Relationship == "Relationship Unknown"] <- "Unkown"

dviolence <- data.frame(dviolence, Relationship2)

####c
#removes the "Relationship" variable from the data frame
dviolence <- subset(dviolence, select = -Relationship)

#### Question no. 2
####a
#creating a subset that contains only the SuspectAge and VictimAge variables for elements where Relationship2 = "Others"
others <- subset(dviolence, Relationship2=="Others", select = c(SuspectAge, VictimAge))

####b
##creating a subset that contains only the Offense, SuspectAge, VictimAge, and SexInter variables for elements where VictimAge < 18
minors <- subset(dviolence, VictimAge < 18, select = c(Offense, SuspectAge, VictimAge, SexInter))