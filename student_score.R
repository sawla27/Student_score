......#Getting started
getwd()
list.files()
......#importing the dataset
student_score <- read.csv(file.choose())
......#installing ggplot2 library
library(ggplot2)
......#plotting score vs hours
ggplot(data=student_score, aes(x=Hours, y=Scores)) + geom_point()
......#using linear regression(lm()) to predict relationship model between the predictor and the response variable.
lmScore=lm(Scores ~ Hours, data = student_score)
summary(lmScore)
......#predicted score for student studying 9.25hr/day
a <- data.frame(Hours = 9.25)
result <- predict(lmScore,a)
result
.......#Visualize the Regression Graphically
s <- qplot(data=student_score, x=Hours, y=Scores, colour="blue") 
coef(lm(Scores ~ Hours, data = student_score))
s + geom_abline(intercept = 2.4, slope = 9)
........#if you can use this too to Visualize the Regression Graphically
ggplot(student_score, aes(Hours, Scores)) + geom_point() + geom_abline() + lims(x = c(0,9), y = c(0,100))

