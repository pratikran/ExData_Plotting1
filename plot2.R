# Reading Dataset and subsetting for plotting data
source("load_data.R")

png("plot2.png")
par(mar = c(5, 5, 4, 2))
with(plotDat, plot(DateTime, Global_active_power, type = "l", main = "", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()