#File with dataset 
datafile <- "data/household_power_consumption.txt"

# Read data
source("getData.R")

#create plot1.png file
Sys.setlocale("LC_TIME", "English")

png(file = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

with(data,{
     plot(DateTime, Global_active_power, type = "l",
          xlab ="",
          ylab = "Global active power")
     
     plot(DateTime, Voltage, type = "l",
          xlab ="datetime",
          ylab = "Voltage")       
})

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

legend("topright", border = NULL, lty = "solid", lwd = 1,col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

with(data,
     plot(DateTime, Global_reactive_power, type = "l",
          xlab ="datetime")
     )


dev.off()
