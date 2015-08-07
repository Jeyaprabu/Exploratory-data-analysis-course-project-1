plot2<-function(){
      hh <- read.csv("G:/Online/Coursera/Data Science Specialisation/Exploratory Data Analysis/pro/cp1/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings = "?")
      hh$Date<-as.Date(hh$Date,format="%d/%m/%Y")
      t<-hh[which(hh$Date %in% as.Date(c("2007-02-02","2007-02-01"))),]
      com<-paste(t$Date,t$Time,sep=" ")
      com<-strptime(com,format="%Y-%m-%d %H:%M:%S")
      plot(com,t[,3],type="l",col="red",ylab="Global Active Power(kilowatts)",xlab="")
      dev.copy(png,file="plot2.png")
      dev.off()
}