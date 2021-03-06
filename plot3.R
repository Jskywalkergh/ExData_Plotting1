#Author: Jian Shi, Univ. of Michigan.

setwd("/Data/Coursera/proj")
df=read.table("household_power_consumption.txt", sep=";",header=TRUE,stringsAsFactors=FALSE)
#Only use the data of this time per the assignment
data <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]
dt <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(data$Global_active_power)

sm1 <- as.numeric(data$Sub_metering_1)
sm2 <- as.numeric(data$Sub_metering_2)
sm3 <- as.numeric(data$Sub_metering_3)

png("plot3.png",width=480,height=480)

plot(dt, sm1, type="l",xlab="", ylab="Energy Submetering")
lines(dt, sm2, type="l", col="red")
lines(dt, sm3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()


