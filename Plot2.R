
df <- read.table(file="household_power_consumption.txt",sep=";",header=TRUE, skip = grep("1/2/2007", readLines("household_power_consumption.txt")) - 1, nrows = 2879) 
colnames(df)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
x<-as.POSIXct(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S")
plot(x,df$Global_active_power,"l",ylab="Global Active Power (killowatts)",xlab="")
dev.copy(png,file="Plot2.png",width=480, height=480)
dev.off()