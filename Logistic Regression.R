read.csv("Movie Data.csv")
data<-read.csv("Movie Data.csv")
View(data)
str(data)
data$Worldwide_gross...<-as.numeric(data$Worldwide_gross...)
data$Budget.in..<-as.numeric(data$Budget.in..)
data$HIT.FLOP<-as.factor(data$HIT.FLOP)
View(data)
data1<-data[,-c(1,2,3)]
View(data1)
str(data1)
data1$HIT.FLOP<-as.factor(data1$HIT.FLOP)
str(data1)
dim(data1)
#Splitting The Data into training and testing
set.seed(550)
#masking the data
samplesize<-floor(0.66*nrow(data1))
samplesize
set.seed(5)
#Splitting the data
traind<-sample(seq_len(nrow(data1)),size=samplesize)
TrainedData<-data1[traind,]
TestData<-data1[-traind,]
Control<-trainControl(method="cv",summaryFunction=twoClassSummary,classProbs=TRUE,savePredictions=TRUE)
#logistic regression model
modelLog<-train(HIT.FLOP~.,method='glm',data=TrainData, trcontrol=control)
#Prediction
TPredLog<-predict(ModelLog,TestData,type="raw")
TPredLog
TestData$HIT.FLOP
#Confusion Matrix
CML<-table(TPredLog,TestData$HIT.FLOP,dnn = c("Predicted","Actual"))
CML
confusionmatrix(CML)
ROC<-eval(modelLog)
ROC