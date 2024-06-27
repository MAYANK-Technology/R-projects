#Decision making in R
# 1. If statement. Syntax:
#
#     If (condition)
#     {
#        Statements to be executed
#     }  
# check if a number is greater than 5

x <- 1

if(x>5)
{
  print("The number is greater than 5")
}

# 2. If else statement. Syntax:
#
#     If (condition)
#     {
#        Statements to be executed in if block
#     } else {
#        Statements to be executed in else block 
#     }

# check if a number is positive or negative

x <- -22

if(x>0)
{
  print(paste(x," is positive"))
} else {
  print(paste(x," The number is not positive"))
}

# 3. Nested if else
#
#     If (condition)
#     {
#        Statements to be executed if 1st condition is true 
#     } else if(condition){
#        Statements to be executed if 2nd condition is true 
#     } else if(condition){
#        Statements to be executed if 3rd condition is true
#     } else {
#        Statements to be executed if no conditions are met
#     }
# check if number is positive negative or zero

x <- 0
if(x>0)
{
  print(paste(x," is positive"))
} else if(x<0) {
  print(paste(x," is negative"))
} else {
  print("Number is zero")
}


#Loops in R
#while, for, repeat

#while loops
i <- 1
while(i<10)
{
  print("Hello world")
  i = i+1
} 


#for loops
for( i in 1:10)
{
  print("hello")
}


val <- c("Hello","hi","hey","good day")
for(v in val)
{
  
  print(v)
}





#repeat loop
i<-1
repeat 
{
  print(v[i])
  i<-i+1 
  if(i>3)
    break
}

#functions in R

fun1 <- function()
{
  print("hello world")
}
  
fun1()


fun2 <- function(a,b)
{
  c <- a+b
  print(c)
}

fun2(5,6)

#more examples
#packages in R

v <- c(1,2,2,4,3,7,8,8,4,3,6,8,9)
mean(v)
median(v)
mode(v)

install.packages('modeest')
library('modeest')

mfv(v)


####################
# Importing datasets

data <-datasets::
View(data)
summary(data)
datasets::