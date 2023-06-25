# Assignment: ASSIGNMENT 3.2 (American Community Survey)
# Name: Chavan, Swapnil
# Date: 2023-06-25

#install.packages ("pastecs")
library (pastecs)
library(ggplot2)


theme_set(theme_minimal())
amcomsurvey <- read.csv("data/acs-14-1yr-s0201.csv")

#str(),nrow(),ncol()
str(amcomsurvey)
nrow(amcomsurvey)
ncol(amcomsurvey)

#Histogram with bin size
ggplot(amcomsurvey,aes(HSDegree)) + geom_histogram(bins=30)

#Histogram with bin size + titles
ggplot(amcomsurvey,aes(HSDegree)) + geom_histogram(bins=30) + ggtitle('HSDegree Histogram') + xlab('High School Degree') + ylab('Points')

# Normal Curve
ggplot(amcomsurvey,aes(HSDegree)) + geom_histogram(aes(y = ..density..), bins = 30) + geom_function(fun = dnorm, args = list(mean = mean(amcomsurvey$HSDegree), sd = sd(amcomsurvey$HSDegree)), size=3, colour="Red")


#Probablity Curve
#qqnorm(amcomsurvey$HSDegree)
#qqline(amcomsurvey$HSDegree)

#Statistic Description
stat.desc(amcomsurvey)


