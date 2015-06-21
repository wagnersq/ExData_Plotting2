## Packages
library(ggplot2, quietly = TRUE)

## Plotting
print("Plotting ...")

data <- NEI
code  <- SCC
baltimore <- aggregate(data$Emissions[data$SCC %in% code$SCC[grep("Coal",code$Short.Name)]] ~ data$year[data$SCC %in% code$SCC[grep("Coal",code$Short.Name)]] , data, sum)
colnames(baltimore) <- c("year", "emissions")
plot4 <- ggplot(
  baltimore, 
  aes(
    x=factor(year),
    y=emissions)
  ) + 
  geom_bar(
    stat = "identity"
    ) +
  ggtitle(
    "Emissions from coal combustion-related sources in the USA from 1999-2008."
    ) + 
  labs(
    x = "Years", 
    y="Emissions"
    )
print(plot4)

## Saving ...
print("Saving to plot4.png file ...")
dev.copy(png, file = "plot4.png", height = 768, width = 768, units = "px", bg = "transparent")
dev.off()