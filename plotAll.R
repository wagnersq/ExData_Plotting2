## Clean the screen
cat("\014")

## Downloading the dataset file
source("downloadFile.R")

## Getting data from dataset file
source("gettingData.R")

## Setting up the default margins
par("mar"=c(5.1, 4.1, 4.1, 2.1))

## Plot1
source("plot1.R")

## Plot2
source("plot2.R")

## Plot3
source("plot3.R")

## Plot4
source("plot4.R")

## Plot5
source("plot5.R")

## Plot6
source("plot6.R")

## Remove dataset objects from R enviroment
source("cleanUp.R")