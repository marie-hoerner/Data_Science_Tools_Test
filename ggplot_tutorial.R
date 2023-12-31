library(datasets)
#Load Data
data(mtcars)
#View first 5 rows
head(mtcars, 5)
?mtcars
#load ggplot package
library(ggplot2)
#create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()
#Add a title
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("Displacement vs Miles per Gallon")
##Change axes names
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("Displacement vs Miles per Gallon")+labs(x="Displacement",y="Miles per Gallon")

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
#create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()
##Add color
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

##Create a histogram of weight
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)
