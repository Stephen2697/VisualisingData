
#installed.packages()

# We will be using ggplot, which is in the package ggplot2.  
install.packages("ggplot2")

library(ggplot2)

data()

data("mtcars")

head(mtcars)

nrow(mtcars)
ncol(mtcars)

rownames(mtcars)

summary(mtcars)

str(mtcars)
mtcars$hp
mtcars['hp']

mtcars

mtcars$cyl

class(mtcars$cyl)

df<-mtcars

df

class(mtcars$gear)
df$gear<-as.factor(df$gear)
class(df$gear)

ggplot(mtcars)

ggplot(data=mtcars, aes(mpg)) + 
  geom_histogram()

ggplot(data=mtcars, aes(mpg)) + 
  geom_histogram(bins=15)

ggplot(data=mtcars, aes(mpg)) + 
  geom_freqpoly(bins=15)

ggplot(data=mtcars, aes(mpg)) + 
  geom_histogram(bins=15) +
  geom_freqpoly(bins=15)

ggplot(data=mtcars, aes(mpg)) + 
  geom_histogram(bins=15, fill="orange") +
  geom_freqpoly(bins=15,colour="blue", size=1)

str(mtcars)

ggplot(data=mtcars, aes(cyl)) + 
geom_boxplot()

ggplot(data=mtcars, aes(mpg)) + 
geom_boxplot()

ggplot(data=mtcars, aes(drat)) + 
geom_boxplot()

ggplot(data=mtcars, aes(drat)) + 
  geom_histogram(bins=15, color="blue", fill="yellow")

ggplot(mtcars, aes(cyl)) + geom_bar()


p<-ggplot(mtcars, aes(cyl)) 
p<-p+geom_bar()
p

p<-ggplot(mtcars, aes(mpg))
p+geom_bar()

df<-mtcars
df$mpg<-as.factor(df$mpg)
p<-ggplot(df, aes(mpg))
p+geom_bar()

df<-mtcars
df$mpg<-as.integer(df$mpg)
p<-ggplot(df, aes(mpg))
p+geom_bar()

ggplot(data = mtcars, aes(x=gear, y=cyl, fill=cyl) ) + geom_bar(stat='identity') 

df<-mtcars
df$gear <- factor(df$gear) # Create a categorical variable
df$cyl <- factor(df$cyl) # Create categorical variable
ggplot(data = df, aes(x=gear, fill=cyl) ) + geom_bar() 


ggplot(df, aes(factor(cyl), fill = factor(gear))) +
  geom_bar(position = "dodge2")

ggplot(data=mtcars, aes(x=cyl)) + 
  geom_bar() 

ggplot(data=mtcars, aes(cyl)) + 
geom_bar() + 
  coord_polar(theta = "y") 

ggplot(data=mtcars, aes(x="", fill = factor(cyl))) + 
  geom_bar() 

ggplot(data=mtcars, aes(x = "", fill = factor(cyl))) + 
  geom_bar() + 
  coord_polar(theta = "y") 


ggplot(data=df,aes(x=cyl,y=mpg,fill=gear))+
        geom_bar(stat="identity")+
        coord_polar()


