#File with dataset 
datafile <- "data/household_power_consumption.txt"

# Read data
source("getData.R")

#create plot1.png file
Sys.setlocale("LC_TIME", "English")

png(file = "plot3.png", width = 480, height = 480)
with(data, plot(DateTime, Sub_metering_1, type = "l",
                xlab ="",
                ylab = "Energy sub metering"))
with(data, lines(DateTime, Sub_metering_2, type = "l",
                xlab ="",
                ylab = "Energy sub metering",
                col="red"))
with(data, lines(DateTime, Sub_metering_3, type = "l",
                 xlab ="",
                 ylab = "Energy sub metering",
                 col="blue"))

legend("topright",  lty = "solid", lwd = 1,col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
