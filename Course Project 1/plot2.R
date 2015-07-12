##R code to plot global active power vs date from given data
##Course Project 1

data<-read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", 
               sep=";", stringsAsFactors =FALSE, na.strings = "?")

usedata <- subset(data, Date == "1/2/2007")
usedata2 <- subset(data, Date == "2/2/2007")
usedata <- rbind(usedata,usedata2)

datedata <- paste(usedata$Date, usedata$Time)
dates <- strptime(newdata, format="%d/%m/%Y %H:%M:%S")
plot(dates,usedata$Global_active_power,type="l")
