if(!dir.exists("./UCI HAR Dataset")){
	fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

	download.file(fileUrl,destfile="data.zip")

	unzip(zipfile="data.zip",exdir=".")
}