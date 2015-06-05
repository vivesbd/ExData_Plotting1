##Brian Vives
##EDA Project 1 Plot 1 

##open graphic device for png file output
png(file = "plot4.png")

##feb_red_data.txt is cleaned up data.  source file cleaned up external to R
##head n 1 appended to file to get headers information
## grep then used to get desired days in february appended as well
reduced_file <- "feb_red_data.txt"

##file is read into data to work with,  we were told missing values represented by ?
data <- read.table(reduced_file, sep = ";", header = T, na.strings = "?")

##convert date to more usable format
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

##creates 2 X 2 area for multiple plots
par(mfrow = c(2, 2))

##plot 1
plot(data$Datetime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

##plot 2
plot(data$Datetime, data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

##plot 3
plot(data$Datetime, data$Sub_metering_1, type = "l", xlab = "", col = "black", ylab = "Energy sub metering" )
points(data$Datetime, data$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2", col = "red")
points(data$Datetime, data$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3", col = "blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", )

##plot 4
plot(data$Datetime, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", ylim = c(0, 0.5))
dev.off()
