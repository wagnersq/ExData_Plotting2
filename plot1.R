## Plotting
print("Plotting ...")
barplot(
  tapply(
    NEI$Emissions, 
    NEI$year, 
    sum), 
  xlab = "Year",
  ylab = "PM2.5 Emissions", 
  main = "Total emissions from PM2.5 decreased in the USA from 1999 to 2008."
)

## Saving ...
print("Saving to plot1.png file ...")
dev.copy(png, file = "plot1.png", height = 768, width = 768, units = "px", bg = "transparent")
dev.off()