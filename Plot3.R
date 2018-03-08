Exp_W1 <- read.table("C:/Users/Qualex/Desktop/Courseera/household_power_consumption.txt", header = TRUE, sep = ";",na.strings = "?")
Date1 <- "1/2/2007"
Date2 <- "2/2/2007"
Exp_W2 <- Exp_W1[Exp_W1$Date == Date1 | Exp_W1$Date == Date2,]
Exp_W2$DateTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")


#Plot 3 

plot(Exp_W2$DateTime, Exp_W2$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub meeting")
lines(Exp_W2$DateTime, Exp_W2$Sub_metering_2, col = "red")
lines(Exp_W2$DateTime, Exp_W2$Sub_metering_3, col = "blue")
legend( "topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") , col = c("black","red","blue"), lty = 1)

dev.copy(png, 'Plot3.png')
dev.off()
