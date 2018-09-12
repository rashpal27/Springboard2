
library(tidyverse)




titanic_original <- read_csv("titanic_original.csv")



titanic_original1 <- titanic_original

titanic_original1$boat[which (is.na(titanic_original1$boat))] <-"None"

titanic_original1 <-add_column(titanic_original1, has_cabin_number = "missing")

titanic_original1$has_cabin_number <- ifelse (is.na(titanic_original1$cabin), 0, 1)

titanic_original1$embarked[which(is.na(titanic_original1$embarked))] <- "S"



#mean(titanic_original1$age) to get the mean


titanic_original1$age[which (is.na(titanic_original1$age))] <- mean(titanic_original1$age , na.rm= TRUE)

write_csv(titanic_original1, "titanic_clean.csv" )

