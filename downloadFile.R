oldDir <- getwd()

dataDir <- "./data"

## Create data dir if it not exists
if(!file.exists(dataDir)){
  dir.create(dataDir)
}

## Try to change to data dir
if(file.exists(dataDir)){
  setwd(dataDir)

  downloadedFileZip <- "NEI_data.zip"
  
  ## Download the dataset zip file if it not exists
  if(!file.exists(downloadedFileZip)){
    print("Downloading the dataset zip file ...")
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
    download.file(fileUrl, destfile=downloadedFileZip, method="curl")
  }

  if(file.exists(downloadedFileZip)){
    print("* Dataset zip file already exist ...")
    print("Uncompressing the dataset zip file ...")
    unzip(downloadedFileZip, overwrite=TRUE)
  } else {
    setwd(oldDir)
    stop("Error while downloading dataset file.")
  }
  setwd(oldDir)

} else {
    stop("Error while creating data directory.")
}
