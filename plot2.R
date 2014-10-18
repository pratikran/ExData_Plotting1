#Loading source data
source("load_data.R")

#plotting plot2.png

png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(plotD$DateTime, plotD$Global_active_power, type="l", ylab="Global Active Power(kilowatts)", xlab="")
dev.off()