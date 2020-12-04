# Members:
# Abadilla, Alexandra Janine
# Gempis, Gillian Larah
# Rondael, Pristine Jennland

#### Question number 1 -----

d_vio <- read.csv("dviolence.csv", TRUE, ",")
saveRDS(d_vio, file = "d_vio.rds")
d_vio <- readRDS(file = "d_vio.rds")

#a
SexInter <- rep(NA, 73)

SexInter[d_vio$SuspectSex == "Male" & d_vio$VictimSex == "Male"] <- "Male on Male"
SexInter[d_vio$SuspectSex == "Male" & d_vio$VictimSex == "Female"] <- "Male on Female"
SexInter[d_vio$SuspectSex == "Female" & d_vio$VictimSex == "Male"] <- "Female on Male"
SexInter[d_vio$SuspectSex == "Female" & d_vio$VictimSex == "Female"] <- "Female on Female"

d_vio <- data.frame(d_vio, SexInter)
View(d_vio)

#b
Relationship2 <- rep(NA, 73)

Relationship2[d_vio$Relationship == "Victim was Ex-Spouse"] <- "Lover/Ex-lover"
Relationship2[d_vio$Relationship == "Victim was Boyfriend/Girlfriend - BG"] <- "Lover/Ex-lover"
Relationship2[d_vio$Relationship == "Victim was Spouse"] <- "Lover/Ex-lover"
Relationship2[d_vio$Relationship == "Victim was Parent"] <- "Family Member"
Relationship2[d_vio$Relationship == "Victim was Child"] <- "Family Member"
Relationship2[d_vio$Relationship == "Victim was Other Family Member"] <- "Family Member"
Relationship2[d_vio$Relationship == "Victim was Offender"] <- "Offender"
Relationship2[d_vio$Relationship == "Victim was Friend"] <- "Others"
Relationship2[d_vio$Relationship == "Victim was Aquaintance"] <- "Others"
Relationship2[d_vio$Relationship == "Victim was Otherwise Known"] <- "Others"
Relationship2[d_vio$Relationship == "Victim was Relationship Unknown"] <- "Unknown"

d_vio <- data.frame(d_vio, Relationship2)
View(d_vio)

#c
d_vio <- subset(d_vio, select = -Relationship)
View(d_vio)

#### Question number 2 -----

#a
A_others <- subset(d_vio, select = -c(Offense, SuspectSex, VictimSex, SexInter))
A_others <- subset(A_others, Relationship2 == "Others")
View(A_others)

#b

AOI_minor <- subset(d_vio, select = -c(SuspectSex, VictimSex, Relationship2))
AOI_minor <- subset(AOI_minor, VictimAge < 18)
View(AOI_minor)
