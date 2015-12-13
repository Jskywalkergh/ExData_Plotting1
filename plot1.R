#Author: Jian Shi, Univ. of Michigan.

setwd("/Data/Coursera/proj")
df=read.table("household_power_consumption.txt", sep=";",header=TRUE,stringsAsFactors=FALSE)
#Only use the data of this time per the assignment
data <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
dim(data)
png("plot1.png",width=480,height=480)
hist(as.numeric(data$Global_active_power), col='red',main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()

