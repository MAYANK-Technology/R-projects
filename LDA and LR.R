read.csv("Movie Data.csv")
data<- read.csv("Movie Data.csv")
View(data)
str(data)
#data$Worldwide_gross...<-as.numeric(data$Worldwide_gross...)
#data$Budget.in..<-as.numeric(data$Budget.in..)
data$HIT.FLOP<-as.factor(data$HIT.FLOP)
Data1<-data[,-c(1,2,3)]
str(Data1)
dim(Data1)

# split the data into training and testing sets
# 
x<-set.seed(550)
x
Samplesize<-floor(0.66*nrow(Data1))
set.seed(5)
trainset<-sample(seq_len(nrow(Data1)),size=Samplesize)
TrainData<-Data1[trainset,]
TestData<-Data1[-trainset,]
View(Data1)
View(TrainData)
View(TestData)
dim(TrainData)
dim(TestData)

#modeling the data to Training data
Control<- trainControl(method="cv",summaryFunction = twoClassSummary,classProbs = TRUE,savePredictions = TRUE)
# Logistic Regression Model

Modellog<- train(HIT.FLOP~.,method='glm',data=TrainData,trControl=Control)
TPredLog<- predict(Modellog,TestData,type= "raw")
TPredLog
TestData$HIT.FLOP
#confusionMatrix
CML<-table(TPredLog,TestData$HIT.FLOP,dnn=c("Predicted","Actual"))
CML
confusionMatrix(CML)
ROC<-eval(Modellog)
ROC

