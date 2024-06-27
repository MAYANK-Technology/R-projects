## read data
read.csv("Project file for R.csv")
## assign variable to data
data<-read.csv("Project file for R.csv")
library(fpp2)
View(data)
##change into time series data
y <- ts(data[,4],start = c(2010,1), frequency = 12)
View(y)
plot(y)

##estimates the model parameters and returns information about the fitted model
fit_ets <- ets(y)

print(summary(fit_ets))
checkresiduals(fit_ets)
## forecast for x1
fcst1 <- forecast(fit_ets, h=36)
print(fcst1)
autoplot(fcst1)
summary(fcst1)

