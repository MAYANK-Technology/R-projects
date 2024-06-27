read.csv("Movie data.csv")
data<-read.csv("Movie data.csv")
View(data)
str(data)
data$Worldwide_gross...<-as.integer(data$Worldwide_gross...)
data$Budget.in..<-as.numeric(data$Budget.in..)
data$HIT.FLOP<-as.factor(data$HIT.FLOP)
Data1<-data[,-c(1,2,3)]
str(Data1)
Data1$HIT.FLOP<-as.factor(Data1$HIT.FLOP)
str(Data1)
dim(Data1)
#split the data into training and testing
set.seed(550)
Samplesize<-floor(0.66*nrow(Data1))
set.seed(5)
traind<-sample(seq_len(nrow(Data1)),size=Samplesize)
TrainData<-Data1[traind,]
TestData<-Data1[-traind,]
#modeling the data to Training data
Control<-trainControl(method="cv",summaryFunction = twoClassSummary,classProbs = TRUE,savePredictions = TRUE)
#logistic regression Model
ModelLog<-train(HIT.FLOP~.,method='glm',data=TrainData,trControl=Control)
TPredLog<-predict(ModelLog,TestData,type = "raw")
TPredLog
TestData$HIT.FLOP
#confusionMatrix
CML<-table(TPredLog,TestData$HIT.FLOP,dnn = c("Predicted","Actual"))
CML
confusionMatrix(CML)
ROC<-eval(ModelLog)
ROC


