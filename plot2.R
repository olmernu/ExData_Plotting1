######################################################
#Plot 2

##Getting data
data.Hwk1 <- read.table("household_power_consumption.txt", 
                        sep = ";", dec= ".", header = TRUE,
                        stringsAsFactors = FALSE)

##Subsetting
subSetData <- data.Hwk1[data.Hwk1$Date %in% c("1/2/2007","2/2/2007"),]

##Making date as time format
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

##Convert to numeric 
Global_active <- as.numeric(subSetData$Global_active_power)

##Making the plot
png("plot2.png", width=480, height=480)
plot(datetime, Global_active, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 