read.csv("Project file for R.csv")
data<-read.csv("Project file for R.csv")
library(fpp2)
View(data)
y <- ts(data[,4],start = c(2010,1), frequency = 12)
View(y)
plot(y)
##y2<- diff(y)
##autoplot(y2)
##ggseasonplot(y2)
autoplot(y)
ggseasonplot(y)
fit_ets <- ets(y)
print(summary(fit_ets))
checkresiduals(fit_ets)
fcst1 <- forecast(fit_ets, h=36)
print(fcst1)
autoplot(fcst1)


