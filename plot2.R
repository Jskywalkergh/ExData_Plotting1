#Author: Jian Shi, Univ. of Michigan.

setwd("/Data/Coursera/proj")
df=read.table("household_power_consumption.txt", sep=";",header=TRUE,stringsAsFactors=FALSE)
#Only use the data of this time per the assignment
data <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png",width=480,height=480)

GAP <- as.numeric(data$Global_active_power)
plot(dt, GAP, type="l",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()