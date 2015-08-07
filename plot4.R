plot4<-function(){
      hh <- read.csv("G:/Online/Coursera/Data Science Specialisation/Exploratory Data Analysis/pro/cp1/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings = "?")
      hh$Date<-as.Date(hh$Date,format="%d/%m/%Y")
      t<-hh[which(hh$Date %in% as.Date(c("2007-02-02","2007-02-01"))),]
      com<-paste(t$Date,t$Time,sep=" ")
      com<-strptime(com,format="%Y-%m-%d %H:%M:%S")
      s1<-as.numeric(t$Sub_metering_1)
      s2<-as.numeric(t$Sub_metering_2)
      s3<-as.numeric(t$Sub_metering_3)
      par(mfrow=c(2,2))
      plot(com,t[,3],type="l",col="red",ylab="Global Active Power",xlab="")
      plot(com,t[,5],type="l",col="blue",ylab="Voltage",xlab="datetime")
     
      plot(com,s1,type="l",col="red",ylab="Energy sub metering",xlab="")
      lines(com,s2,col="green")
      lines(com,s3,col="blue")
      legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),lty=1,col=c("red","green","blue"))
      plot(com,t[,4],type="l",col="green",ylab="Global_reactive_Power",xlab="datetime")
      dev.copy(png,file="plot4.png")
      dev.off()
}