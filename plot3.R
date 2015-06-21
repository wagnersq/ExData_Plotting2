## Packages
library(ggplot2, quietly = TRUE)

## Plotting
print("Plotting ...")

data <- NEI
code  <- SCC
baltimore <- aggregate(data$Emissions[data$fips==24510] ~ data$type[data$fips==24510]+data$year[data$fips==24510] , data, sum)
colnames(baltimore) <- c("type","year","emissions")
plot3 <- ggplot(
  baltimore, 
  aes(
    x = factor(year),
    y = emissions,
    group=type)
  ) + 
  geom_line(
    aes(colour = type)
    ) +
  ggtitle("PM2.5 emissions in the Baltimore City from 1999 to 2008 by type.") + 
  labs(
    x = "Years", 
    y = "PM2.5 Emissions"
    )
print(plot3)

## Saving ...
print("Saving to plot3.png file ...")
dev.copy(png, file = "plot3.png", height = 768, width = 768, units = "px", bg = "transparent")
dev.off()