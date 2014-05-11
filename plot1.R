#File with dataset 
datafile <- "data/household_power_consumption.txt"

# Read data
source("getData.R")

#create plot1.png file
par(mfrow = c(1, 1))
png(file = "plot1.png", width = 480, height = 480)
with(data, hist(Global_active_power, 
                ylab = "Frequency",
                xlab="Global active power (kilowatts)",
                main = "Global Active Power", 
                col = "orangered2"))
dev.off()