## Packages
library(ggplot2, quietly = TRUE)

## Plotting
print("Plotting ...")

data <- NEI
code  <- SCC

baltimore <- aggregate(data$Emissions[data$SCC %in% code$SCC[grep("Veh",code$Short.Name)] & data$fips == 24510] ~ data$year[data$SCC %in% code$SCC[grep("Veh",code$Short.Name)] & data$fips == 24510] , data, sum)
colnames(baltimore) <- c("year", "emissions")
plot5 <- ggplot(
  baltimore, 
  aes(
    x=factor(year),
    y=emissions)
  ) + 
  geom_bar(
    stat = "identity"
    ) +
  ggtitle("Emissions by motor vehicle sources changed from 1999-2008 in Baltimore City.") + 
  labs(
    x = "Years", 
    y="Emissions"
  )
print(plot5)

## Saving ...
print("Saving to plot5.png file ...")
dev.copy(png, file = "plot5.png", height = 768, width = 768, units = "px", bg = "transparent")
dev.off()