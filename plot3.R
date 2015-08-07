plot3<-function(){
      hh <- read.csv("G:/Online/Coursera/Data Science Specialisation/Exploratory Data Analysis/pro/cp1/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings = "?")
      hh$Date<-as.Date(hh$Date,format="%d/%m/%Y")
      t<-hh[which(hh$Date %in% as.Date(c("2007-02-02","2007-02-01"))),]
      com<-paste(t$Date,t$Time,sep=" ")
      com<-strptime(com,format="%Y-%m-%d %H:%M:%S")
      s1<-as.numeric(t$Sub_metering_1)
      s2<-as.numeric(t$Sub_metering_2)
      s3<-as.numeric(t$Sub_metering_3)
      plot(com,s1,type="l",col="red",ylab="Energy sub metering",xlab="")
      lines(com,s2,col="green")
      lines(com,s3,col="blue")
      legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),lty=1,col=c("red","green","blue"))
      dev.copy(png,file="plot3.png")
      dev.off()
}