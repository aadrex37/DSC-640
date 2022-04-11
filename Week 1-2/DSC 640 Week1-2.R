library(ggplot2)
getwd()
setwd("~/Documents/DSC 640")
library(readr)
winners <- read_csv("Winners_HD.csv")
View(winners)
win_name <-winners$Winner
num_eat <-winners$`Dogs eaten`
cntry <- winners$Country
year <- winners$Year
p<-ggplot(data=winners, aes(x=win_name, y=num_eat))+geom_bar(stat="identity",fill="blue")
p
q <- ggplot(data=winners, aes(x="",y=cntry, fill=cntry))+geom_bar(stat="identity")+coord_polar("y", start=0)+theme_void()
q
r<-ggplot(winners, aes(x = Year, y = num_eat, fill = cntry)) +geom_bar(stat = "identity")
r
s <- ggplot(data=winners, aes(x=2,y=cntry, fill=cntry))+geom_bar(stat="identity")+coord_polar("y", start=0)+theme_void()+  scale_fill_brewer(palette = "Dark2")+ xlim(.2,2.5)
s
