library("ggplot2")  #加载画图包
mydata=read.csv("C:/Users/Administrator/Desktop/球员数据.csv") #加载球员数据
str(mydata) #查看数据集结构
p=ggplot(mydata,aes(Preferred.Foot))
p+geom_bar()

p=ggplot(mydata,aes(Values))
p+geom_histogram()
library(corrplot)
corr=cor(mydata)
corrplot(corr,method="number")