# Reading the data from just those dates rather than reading in
# the entire dataset and subsetting to those dates.
data <- subset(read.table('household_power_consumption.txt',
                          header = T, sep = ';', na.strings = c('?')), 
                Date == "1/2/2007" | Date == "2/2/2007")


# Making a histogram
hist(data$Global_active_power, col = 'red', main = 'Global Active Power', 
     xlab = 'Global Active Power (kilowatts)')
