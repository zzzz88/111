setwd("C:/Users/Daizh/Desktop/R/RepData_PeerAssessment1/Activity")
Act <- read.csv("activity.csv", na.strings = "NA")
Activity <- Act[complete.cases(Act),]
Ttlday <- aggregate(steps~date, data = Activity, sum)
Ttldayavg <-aggregate(steps~date, data = Activity, mean, na.rm =TRUE)
Ttldaymed <-aggregate(steps~date, data = Activity, median, na.rm = TRUE)
barplot(Ttlday$steps, names.arg = Ttlday$date, col = Ttlday$date)
sum(complete.cases(Act)==FALSE)