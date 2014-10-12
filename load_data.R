## This file is for loading the large dataset.
dat <- read.table("./household_power_consumption.txt", header = T, sep = ";", na.strings = "?", stringsAsFactors = F)
dat$Date <- as.Date(dat$Date, format = "%d/%m/%Y")
dat$DateTime <- as.POSIXct(paste(dat$Date, dat$Time), format = "%d/%m/%Y %H:%M:%S")
plotDat <- subset(dat, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))