library(ggplot2)
getwd()
setwd("~/Documents/DSC 640")
library(readr)
df <- read_csv("World_Pop.csv")
View(df)
year <- df$Year
pop <- df$Population
r <- ggplot(data = df, aes(x=year, y=pop)) + geom_line() +scale_y_continuous(name= "World Population (billions)") + scale_x_continuous(name= "Year")
r
p <- ggplot(data = df, aes(x=year, y=pop)) + geom_step() +scale_y_continuous(name= "World Population (billions)") + scale_x_continuous(name= "Year")
p
