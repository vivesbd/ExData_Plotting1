##Brian Vives
##EDA Project 1 Plot 2 

##open graphic device for png file output
png(file = "plot2.png")

##feb_red_data.txt is cleaned up data.  source file cleaned up external to R
##head n 1 appended to file to get headers information
## grep then used to get desired days in february appended as well
reduced_file <- "feb_red_data.txt"

##file is read into data to work with,  we were told missing values represented by ?
data <- read.table(reduced_file, sep = ";", header = T, na.strings = "?")

##convert date to more usable format
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

##plot the data
plot(data$Datetime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

## shuts off the graphic device
dev.off()
