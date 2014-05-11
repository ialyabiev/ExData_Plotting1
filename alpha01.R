#alpha

# CONSTANTS

## filename with data
fn <- "data/household_power_consumption.txt"

#rowL (Low limit)- number of rows to skip, until 1/2/2007 00:00:00
#rowU (Upper limit) - number of the Last row with date: 2/2/2007 23:59:00
rowL = 66637
rowU = 69517


## Read headers
ColNames<-names(read.table(fn, sep = ";", header = TRUE, nrows = 1))


## read data 
## from 1/2/2007 00:00:00
## to   2/2/2007 23:59:00

data<-read.table(fn, header =F, sep = ";", skip = rowL, nrows = rowU - rowL)
names(data) <- ColNames

## transform Date and Time columns 
## into DateTime column 
## with date-time objects

DateTime = strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
data <- data.frame(DateTime = DateTime,data[,3:9])
#head(data,2)
#tail(data,2)
