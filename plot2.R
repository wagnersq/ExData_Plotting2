## Plotting
print("Plotting ...")
barplot(
  tapply(
    NEI$Emissions[NEI$fips == 24510], 
    NEI$year[NEI$fips == 24510],
    sum),
  xlab = "Year", 
  ylab = "PM2.5 Emissions",
  main = "Total emissions from PM2.5 decreased in the Baltimore City from 1999 to 2008."
)

## Saving ...
print("Saving to plot2.png file ...")
dev.copy(png, file = "plot2.png", height = 768, width = 768, units = "px", bg = "transparent")
dev.off()