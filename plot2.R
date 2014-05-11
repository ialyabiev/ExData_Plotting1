#File with dataset 
datafile <- "data/household_power_consumption.txt"

# Read data
source("getData.R")

#create plot1.png file
Sys.setlocale("LC_TIME", "English")
par(mfrow = c(1, 1))
png(file = "plot2.png", width = 480, height = 480)
with(data, plot(DateTime, Global_active_power, type = "l",
     xlab ="",
     ylab = "Global active power (kilowatts)"))

dev.off()

