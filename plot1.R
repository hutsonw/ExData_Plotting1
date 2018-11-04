# Code That Constructs, Shows, and Then Saves 'plot1' From The Peer Reviewed Exercise

# Please Note: This code assumes that 'household_power_consumption.txt'
# is locted in your working directory

rm(list = ls())

hd_power <- read.table('./household_power_consumption.txt',sep = ';')
hd_pow_Dates <- as.Date(as.character(hd_power$V1),'%d/%m/%Y')
hd_twoDay <- subset(hd_power, hd_pow_Dates == '2007-02-01' | hd_pow_Dates == '2007-02-02') 

hist(as.numeric(as.character(hd_twoDay$V3)),col = 'red',xlab = 'Global Active Power (kilowatts)',main = 'Global Active Power')

png(filename = 'plot1.png',width=480,height=480,units='px')
hist(as.numeric(as.character(hd_twoDay$V3)),col = 'red',xlab = 'Global Active Power (kilowatts)',main = 'Global Active Power')
dev.off()