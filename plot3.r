## Load data
source('data.R')

## Open device - png
png(filename='plot3.png')

## Make plot
plot(pdata.df$date.time, pdata.df$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(pdata.df$date.time, pdata.df$Sub_metering_2, col='red')
lines(pdata.df$date.time, pdata.df$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

## Turn off device
dev.off()