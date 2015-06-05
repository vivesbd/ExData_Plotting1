##Brian Vives
##EDA Project 1 Plot 1 

##open graphic device for png file output
png(file = "plot1.png")

##feb_red_data.txt is cleaned up data.  source file cleaned up external to R
##head n 1 appended to file to get headers information
## grep then used to get desired days in february appended as well
reduced_file <- "feb_red_data.txt"

##file is read into data to work with,  we were told missing values represented by ?
data <- read.table(reduced_file, sep = ";", header = T, na.strings = "?")

##creates the histogram,  ylim used to get scale of example,  without the y axis is different scale
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", ylim = c(0, 1200))


## shuts off the graphic device
dev.off()


