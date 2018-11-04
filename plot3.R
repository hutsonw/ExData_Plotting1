# Code That Constructs, Shows, and Then Saves 'plot3' From The Peer Reviewed Exercise

# Please Note: This code assumes that 'household_power_consumption.txt'
# is locted in your working directory

rm(list = ls())

hd_power <- read.table('./household_power_consumption.txt',sep = ';')
hd_pow_Dates <- as.Date(as.character(hd_power$V1),'%d/%m/%Y')
hd_twoDay <- subset(hd_power, hd_pow_Dates == '2007-02-01' | hd_pow_Dates == '2007-02-02') 

test_x <- seq(1,length(hd_twoDay[,1]),by=1)
test_y1 <- as.numeric(as.character(hd_twoDay$V7))
test_y2 <- as.numeric(as.character(hd_twoDay$V8))
test_y3 <- as.numeric(as.character(hd_twoDay$V9))

plot(test_x,test_y1,type = 'n',ylab ='Energy sub metering',xaxt = 'n',xlab = '')
lines(test_x,test_y1,pch=16,col = 'black')
lines(test_x,test_y2,pch=16,col = 'red')
lines(test_x,test_y3,pch=16,col = 'blue')
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), lwd = 2,col = c('black','red','blue'), lty = c(1,1,1))
axis(1,at = c(1,min(which(hd_twoDay$V1 == '2/2/2007')),length(test_x)), labels = c('Thu','Fri','Sat'))

png(filename = 'plot3.png', width = 480, height = 480, units = 'px')
plot(test_x,test_y1,type = 'n',ylab ='Energy sub metering',xaxt = 'n',xlab = '')
lines(test_x,test_y1,pch=16,col = 'black')
lines(test_x,test_y2,pch=16,col = 'red')
lines(test_x,test_y3,pch=16,col = 'blue')
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), lwd = 2,col = c('black','red','blue'), lty = c(1,1,1))
axis(1,at = c(1,min(which(hd_twoDay$V1 == '2/2/2007')),length(test_x)), labels = c('Thu','Fri','Sat'))
dev.off()