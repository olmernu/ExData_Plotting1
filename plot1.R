######################################################
#Plot 1

##Getting data
data.Hwk1 <- read.table("household_power_consumption.txt", 
                        sep = ";", dec= ".", header = TRUE,
                        stringsAsFactors = FALSE)

##Subsetting
subSetData <- data.Hwk1[data.Hwk1$Date %in% c("1/2/2007","2/2/2007"),]

##Convert to numeric 
Global_active <- as.numeric(subSetData$Global_active_power)

##Making the plot
png("plot1.png", width=480, height=480)
hist(Global_active, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 
