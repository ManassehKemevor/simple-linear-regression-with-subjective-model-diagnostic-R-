data<-read.csv("Salary Data.csv")
View(data)

x<-data[["YearsExperience"]]
y=data[["Salary"]]

plot(x,y,pch=19,main = "scatter plot",xlab ="Years ofExperience",ylab="Salary" )
