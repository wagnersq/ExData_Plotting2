## Changing the path to data directory
setwd(dataDir)

## Loading the NEI and SCC dataset
if (!"NEI" %in% ls()) {
  print("Reading NEI file ...")
  NEI <- readRDS("summarySCC_PM25.rds")
}

print("NEI data frame info ...")
str(NEI)

if (!"SCC" %in% ls()) {
  print("Reading SCC file ...")
  SCC <- readRDS("Source_Classification_Code.rds")
}

print("SCC data frame info ...")
str(SCC) 

## Changing back the path to R scripts directory
setwd(oldDir)