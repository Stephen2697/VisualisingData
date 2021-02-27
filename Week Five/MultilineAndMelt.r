
library(reshape2)
library(tidyverse)
data <- read.csv('data/data.csv')
head(data)

chart_data <- melt(data, id='x')
chart_data

names(chart_data) <- c('x', 'func', 'value')

p<- ggplot() +
  geom_line(data = chart_data, aes(x = x, y = value, color = func), size = 1)+
  xlab("x axis") +
  ylab("y axis")
p

options(repr.plot.width=8, repr.plot.height=8) 
p = p + labs( 
    x="Base value", 
    y="Powered value",
    title="Integers as line, exponent and cube") + 
    theme_classic() #White background
p

cbPalette <- c( "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
p = p +  scale_colour_manual(values=cbPalette)
p

p = p + guides(color = guide_legend(override.aes = list(size = 3)))
p

p =p + theme(
    axis.text.x  = element_text(face="bold", size=14, angle=45),
    axis.text.y  = element_text(face="bold", size=16, angle=0),
    axis.title   = element_text(size=20,face="bold"),
    plot.title   = element_text(size=30, hjust=0.5),
    legend.title = element_text(color = "blue", size = 14),
    legend.text  = element_text(color = "black", size = 12),
    axis.line    = element_blank()
        )
p

p =  p + scale_x_continuous(breaks=seq(0,10,2))
p

chart_data

cube_data <-chart_data %>%
    select (x, func, value) %>%
    filter (func=="cubic")
p = p + geom_line(data=cube_data, aes(x = x, y = value, color = func), size = 3)
p

p

p + annotate("label", x=3, y=500, label = "I love power!", size=8) 
