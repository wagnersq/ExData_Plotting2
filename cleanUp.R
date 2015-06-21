print("Removing Data ...")
## Removing the NEI dataset
rm(NEI)
rm(data)
## Removing the SCC dataset
rm(SCC)
rm(code)
## Removing the baltimore subset
rm(baltimore)
## Removing the sources subset
rm(sources)

print("Removing Values ...")
## Removing the dataDir object
rm(dataDir)
## Removing the downloadedFileZip object
rm(downloadedFileZip)
## Removing the oldDir object
rm(oldDir)

print("Removing plot objects ...")
## Removing the plot3 object
rm(plot3)
## Removing the plot4 object
rm(plot4)
## Removing the plot5 object
rm(plot5)
## Removing the plot6 object
rm(plot6)

print("Removing plot on Plots tabs ...")
dev.off(dev.list()[1])