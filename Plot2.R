Exp_W1 <- read.table("C:/Users/Qualex/Desktop/Courseera/household_power_consumption.txt", header = TRUE, sep = ";",na.strings = "?")
Date1 <- "1/2/2007"
Date2 <- "2/2/2007"
Exp_W2 <- Exp_W1[Exp_W1$Date == Date1 | Exp_W1$Date == Date2,]
Exp_W2$DateTime <-strptime(paste(finalData$Date, finalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")

#Plot 2 

plot(Exp_W2$DateTime, Exp_W2$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (Kilowatts)")
dev.copy(png, 'Plot2.png')
dev.off()