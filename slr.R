data<-read.csv("Salary Data.csv")
View(data)

x<-data[["YearsExperience"]]
y=data[["Salary"]]

plot(x,y,pch=19,main = "scatter plot",xlab ="Years ofExperience",ylab="Salary" )
 
cor.test(x,y)

regMod=lm(y~x)
summary(regMod)
anova(regMod)
confint(regMod)

abline(regMod,col="blue",lwd=2)

names(regMod)
 #normality of error terms
hist(regMod$residuals,main = "Residuals")
qqnorm(regMod$residuals,pch=19,main = "Residuals")
qqline(regMod$residuals,lwd=2,col="#ff0058")
 
#linearity assumption
plot(x,regMod$residuals,xlab ="years of experience",ylab ="residuals")
abline(h=0)
 #constant variance assumption
plot(regMod$fitted.values,regMod$residuals,xlab = "predicted salary",ylab ="residuals")
abline(h=0,col="blue",lwd=2)

#we assume observation are independent 

newData=data.frame(x=7.6)
a=predict(regMod,newdata =newData,interval ="prediction")
a

