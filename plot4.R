######################################################
#Plot 4

##Getting data
data.Hwk1 <- read.table("household_power_consumption.txt", 
                        sep = ";", dec= ".", header = TRUE,
                        stringsAsFactors = FALSE)

##Subsetting
subSetData <- data.Hwk1[data.Hwk1$Date %in% c("1/2/2007","2/2/2007"),]

##Convert to numeric 
Global_active <- as.numeric(subSetData$Global_active_power)
Global_reative <- as.numeric(subSetData$Global_reactive_power)
voltage <- as.numeric(subSetData$Voltage)
subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)

##Making the plot
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

###Plot 1
plot(datetime, Global_active, type="l", xlab="", ylab="Global Active Power", cex=0.2)

###Plot 2
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

###Plot 3
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

###Plot 4
plot(datetime, Global_reative, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off() 
