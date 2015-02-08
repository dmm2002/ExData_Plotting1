dt <- read.table("household_power_consumption.txt", sep = ";",header=TRUE,colClasses = "character")

#subset just the 2 days
dt<-dt[dt$Date=="1/2/2007" | dt$Date =="2/2/2007",]
dt$Global_active_power<-as.numeric(dt$Global_active_power)


hist(dt$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)"
      ,ylab="Frequency",col="red")

dev.copy(png,'plot1.png',width=480, height=480)
dev.off()