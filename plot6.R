## Packages
library(ggplot2, quietly = TRUE)

## Plotting
print("Plotting ...")

data <- NEI
code  <- SCC

sources <- aggregate(data$Emissions[data$SCC %in% code$SCC[grep("Veh", code$Short.Name)] & (data$fips == 24510 | data$fips == "06037")] ~ data$year[data$SCC %in% code$SCC[grep("Veh", code$Short.Name)] & (data$fips == 24510 | data$fips == "06037")] + data$fips[data$SCC %in% code$SCC[grep("Veh", code$Short.Name)] & (data$fips == 24510 | data$fips == "06037")], data, sum)
colnames(sources) <- c("year", "fips", "emissions")
plot6 <- ggplot(
  sources, 
  aes(
    x = factor(year),
    y = emissions,
    group=fips)
  ) + 
  geom_line(
    aes(
      colour=fips
      )
    ) +
  
  ggtitle("Compare emissions from motor vehicle sources between Baltimore City and Los Angeles.") +
  labs(
    x = "Years", 
    y="Emissions"
    ) +
  scale_colour_manual (
    values = c("orange", "blue"), 
    labels = c("Los Angeles County", "Baltimore City")
    )
print(plot6)

## Saving ...
print("Saving to plot6.png file ...")
dev.copy(png, file = "plot6.png", height = 768, width = 768, units = "px", bg = "transparent")
dev.off()