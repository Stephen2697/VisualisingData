
library(tidyverse)
library(reshape2)
library(sqldf)

data('mtcars')

str(mtcars)

options(repr.plot.width=16,repr.plot.height=16)
pairs(mtcars)
Many of these graphs are not meaningful, even though the data is 'num'.  Let's just go with ones that could have meaningful results.
df=sqldf("select mpg, drat, wt, qsec from mtcars")

str(df)

options(repr.plot.width=8,repr.plot.height=8)
pairs(df)

library("GGally")

ggpairs(df)

ggcorr(df, palette = "RdBu", label = TRUE)

mtcars$cyl=as.factor(mtcars$cyl)

p = ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point(aes(color = cyl, size = qsec), alpha = 0.5) +
  scale_color_manual(values = c("#00AFBB", "#E7B800", "#FC4E07")) +
  scale_size(range = c(1, 12))  # Adjust the range of points size
p


