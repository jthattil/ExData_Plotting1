##R code to plot global active power from given data
##Course Project 1

data<-read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", 
               sep=";", stringsAsFactors =FALSE, na.strings = "?")

usedata <- subset(data, Date == "1/2/2007")
usedata2 <- subset(data, Date == "2/2/2007")
usedata <- rbind(usedata,usedata2)

hist(usedata$Global_active_power, col="RED", 
     xlab="Global Active Power (kilowatts)", main="Global Active Power")