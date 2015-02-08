#dt <- read.table("household_power_consumption.txt", sep = ";",header=TRUE,colClasses = "character")

#subset just the 2 days
#dt<-dt[dt$Date=="1/2/2007" | dt$Date =="2/2/2007",]
#dt$DateTime <-paste(dt$Date, dt$Time)
#dt$DateTime <- as.POSIXct(paste(dt$Date, dt$Time), format="%d/%m/%Y %H:%M:%S") 


par(mfrow=c(2,2))
par(mar=c(3.5,3,3,2))
par(ps = 12, cex = .64, cex.lab = 1,cex.axis=1)
par(mgp = c(1.5, .5, 0))

#plot 1
plot(dt$DateTime,dt$Global_active_power,type="n",xlab="",ylab="Global Active Power")
lines(dt$DateTime,dt$Global_active_power)

#plot 2
plot(dt$DateTime,dt$Voltage,type="n",xlab="datetime",ylab="Voltage")
lines(dt$DateTime,dt$Voltage)

#plot 3
plot(dt$DateTime,dt$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(dt$DateTime,dt$Sub_metering_1,col="black")
lines(dt$DateTime,dt$Sub_metering_2,col="red")
lines(dt$DateTime,dt$Sub_metering_3,col="blue")
legend(x="topright",legend=c("Sub_meeting_1","Sub_metering_2","Sub_metering_3")
       ,col=c("black","red","blue"),lwd=1, lty=c(1) ,bty="n")

#plot 4
plot(dt$DateTime,dt$Global_reactive_power,type="n",xlab="datetime",ylab="Global_reactive_power")
lines(dt$DateTime,dt$Global_reactive_power)
dev.copy(png,'plot4.png',width=480, height=480)
dev.off()

