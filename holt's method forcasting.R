library(tidyverse)
library(fpp2)

read.csv("x1 data.csv")
data<-read.csv("x1 data.csv")
View(data)
print(y)
data.train <- window(y, end = c(2014,12))
data.test <- window(y, start = c(2015,12))

holt.data <- holt(data.train,
               h = 36 )
autoplot(holt.data)
summary(holt.data)

