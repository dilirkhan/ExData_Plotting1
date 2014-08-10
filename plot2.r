## Load data
source('data.r')

## Open device - png
png(filename='plot2.png')

## Make plot
plot(pdata.df$date.time, pdata.df$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

## Turn off device
dev.off()