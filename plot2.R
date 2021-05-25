power <- read.table(file.choose(), 
                    sep=";", 
                    header = T, 
                    na="?", 
                    colClasses = c("character",
                                   'character',
                                   'numeric',
                                   'numeric',
                                   'numeric',
                                   'numeric',
                                   'numeric',
                                   'numeric',
                                   'numeric'))

power <- power[which(power$Date == '2/2/2007' | power$Date=='1/2/2007'),]

power$POSIX <-as.POSIXlt.character(paste(power$Date,power$Time),format = "%d/%m/%Y %H:%M:%S")

# for plot.2

png(filename="plot2.png",width=480, height=480)
plot(x=power$POSIX ,y=power$Global_active_power, type = 'l', xlab='',ylab = 'Global Active Power (kilowatts)')
dev.off()
