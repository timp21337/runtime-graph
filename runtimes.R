# R script expecting a single argument of the job name
# outputs a png file

titleTmp = 'Run Times for'
args <- commandArgs(TRUE)

for (arg in args) titleTmp = paste(titleTmp, arg, sep=" ");

data = read.csv('runtimes.csv', stringsAsFactors=F,header=T, sep=',')
x<-as.POSIXct(data$startDatetime,format='%Y-%m-%dT%H:%M:%S')
y<-data$milliseconds
png('runtimes.png')
plot(x,y,col.axis = 'sky blue',xlab='Date',ylab='Minutes')
title(main=paste(titleTmp, Sys.time(), sep="\n"))

        
