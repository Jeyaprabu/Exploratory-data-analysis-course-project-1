plot1<-function(){
      
      hh <- read.csv("G:/Online/Coursera/Data Science Specialisation/Exploratory Data Analysis/pro/cp1/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings = "?")
      hh$Date<-as.Date(hh$Date,format="%d/%m/%Y")
      t<-hh[which(hh$Date %in% as.Date(c("2007-02-02","2007-02-01"))),]
      hist(as.numeric(t$Global_active_power),main="Global Active Power",col="orange",xlab="Global Active Power(kilowatts)")
      dev.copy(png,file="plot1.png")
      dev.off()
}
