
library(tidyverse)



library(readr)
titanic_original <- read_csv("Desktop/titanic_original.csv")
View(titanic_original)



titanic_original1 <- titanic_original


titanic_original1$boat[which (is.na(titanic_original1$boat))] <-"None"

titanic_original1 <-add_column(titanic_original1, has_cabin_number = "missing")

#titanic_original1$has_cabin_number<- "missing"



#titanic_original1$has_cabin_number<- ifelse(
  





