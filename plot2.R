dt <- read.table("household_power_consumption.txt", sep = ";",header=TRUE,colClasses = "character")

#subset just the 2 days
dt<-dt[dt$Date=="1/2/2007" | dt$Date =="2/2/2007",]
dt$DateTime <- as.POSIXct(paste(dt$Date, dt$Time), format="%d/%m/%Y %H:%M:%S") 

plot(dt$DateTime,dt$Global_active_power,type="n",xlab="",ylab="Global Active Power (kilowatts)")
lines(dt$DateTime,dt$Global_active_power)
dev.copy(png,'plot2.png',width=480, height=480)
dev.off()