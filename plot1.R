# Reading Dataset and subsetting for plotting data
source("load_data.R")

# Plotting plot1.png
png("plot1.png")
par(mar = c(5, 5, 4, 2))
hist(plotDat$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.off()