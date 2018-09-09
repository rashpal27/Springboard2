
library(tidyverse)



library(readr)
titanic_original <- read_csv("~/Desktop/springboard_titanic/titanic_original.csv")
View(titanic_original)



titanic_original1 <- titanic_original

titanic_original1$boat[which (is.na(titanic_original1$boat))] <-"None"

titanic_original1 <-add_column(titanic_original1, has_cabin_number = "missing")

titanic_original1$has_cabin_number <- ifelse (is.na(titanic_original1$cabin), 0, 1)

titanic_original1$embarked [which (is.na(titanic_original1$embarked))] <- "S"
#ifelse (is.na(titanic_original1$embarked), "missin", 7) # for debug


#mean(titanic_original1$age) to get the mean


titanic_original1$age[which (is.na(titanic_original1$age))] <- mean(titanic_original1$age , na.rm= TRUE)

write_csv(titanic_original1, "titanic_clean.csv" )

