read.csv("Repurchase intentions.csv")
data<- read.csv("Repurchase intentions.csv")
#psych, corrplot
install.packages("readxl")
library(psych)
library(corrplot)
data1<- data[,-c(1,2,3,4,5,6,7,8,9)]
View(data1)
describe(data1)
cormat<- cor(data1)
corrplot(cormat)
corrplot(cormat,method = "number")
#kmo, bartlett.test, determinant
KMO(cor(data1))
cortest.bartlett(data1)
#if value of p is < 0.05 data is significant
det(cor(data1))
#for checking the no. of factors existing in our data we do parallel analysis
parallelcheck<- fa.parallel(data1)
fact<- factanal(data1, factors = 4, rotation = "varimax")
fact
data2<- data1[,-c(1,2,3)]
KMO(cor(data2))
cortest.bartlett(data2)
det(cor(data2))
det(cor(data2))
parallelcheck <- fa.parallel(data2)
fact<- factanal(data2, factors = 3)
fact
data3<- read.csv("RPI.csv")
datamodel<- lm(Repurchase.Intentions ~ Quality+Offers+Varieties, data3)
datamodel
summary(datamodel)
