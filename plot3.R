dt <- read.table("household_power_consumption.txt", sep = ";",header=TRUE,colClasses = "character")

#subset just the 2 days
dt<-dt[dt$Date=="1/2/2007" | dt$Date =="2/2/2007",]
dt$DateTime <- as.POSIXct(paste(dt$Date, dt$Time), format="%d/%m/%Y %H:%M:%S") 

par(ps = 12, cex = .75, cex.lab = 1,cex.axis=1)

plot(dt$DateTime,dt$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(dt$DateTime,dt$Sub_metering_1,col="black")
lines(dt$DateTime,dt$Sub_metering_2,col="red")
lines(dt$DateTime,dt$Sub_metering_3,col="blue")
legend(x="topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
       ,col=c("black","red","blue"),lwd=1, lty=c(1) )
dev.copy(png,'plot3.png',width=480, height=480)
dev.off()