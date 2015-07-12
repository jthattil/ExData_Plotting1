##R code to plot sub metering vs date from given data
##Course Project 1

data<-read.csv("exdata-data-household_power_consumption/household_power_consumption.txt", 
               sep=";", stringsAsFactors =FALSE, na.strings = "?")

usedata <- subset(data, Date == "1/2/2007")
usedata2 <- subset(data, Date == "2/2/2007")
usedata <- rbind(usedata,usedata2)

datedata <- paste(usedata$Date, usedata$Time)
dates <- strptime(newdata, format="%d/%m/%Y %H:%M:%S")
plot(dates,usedata$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(dates,usedata$Sub_metering_2, col="RED")
lines(dates,usedata$Sub_metering_3, col="BLUE")
legend("topright",lty=1, col=c("BLACK","BLUE","RED"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))