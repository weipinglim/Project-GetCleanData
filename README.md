<<<<<<< HEAD
GetCleanDataProject
===================
The source code is contained within the run_analysis.R. It processes data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description of data can be found via the link below: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data can be downloaded from this link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Note that the source code (GettingCleaningDataProject.R) has to reside in the same working directory as the data folder (UCI HAR Dataset).

###Summary of Source Code

The code performs data cleaning and reshaping in 5 steps:

1. Forms complete dataset for TEST and TRAIN results comprising feature names as field names, subject id as a new column and activity id and labels as new columns. 

2. Combines the TEST and TRAIN data.

3. Extracts Mean and Standard Deviation of each measurement and clean variable names by replacing the dots with a single space.

4. Creates a second, independent tidy data set with the average of each
variable for each activity and each subject

### Source Code
```
#Form complete dataset for TEST results comprising feature names as field names, subject id as a new column and activity id and labels as new columns
datafeature <- read.table("./UCI HAR Dataset/features.txt", col.names = c("SN", "Feature"))
datasubjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                              col.names = "Subject")
datatestx <- read.table("./UCI HAR Dataset/test/X_test.txt", 
                              col.names = datafeature$Feature) #Read in main data and append feature names as field names
datatesty <- read.table("./UCI HAR Dataset/test/y_test.txt", 
                        col.names = "ActID")
tbtestxy <- cbind(datasubjecttest, datatestx, datatesty) #Form dataset without activity labels
dataactivitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                                 col.names = c("ActID", "Activity"))
tbtest <- merge(tbtestxy, dataactivitylabels, by.x = "ActID", 
                by.y = "ActID", sort = FALSE) #Match to activity labels


#Form complete dataset for TRAIN results comprising feature names as field names, 
#subject id as a new column and activity id and labels as new columns
datasubjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                              col.names = "Subject")
datatrainx <- read.table("./UCI HAR Dataset/train/X_train.txt", 
                        col.names = datafeature$Feature) #Read in main data and append feature names as field names
datatrainy <- read.table("./UCI HAR Dataset/train/y_train.txt", 
                        col.names = "ActID")
tbtrainxy <- cbind(datasubjecttrain, datatrainx, datatrainy) #Form dataset without activity labels
tbtrain <- merge(tbtrainxy, dataactivitylabels, by.x = "ActID", 
                by.y = "ActID", sort = FALSE) #Match to activity labels

##Combine the TEST and TRAIN data
tb <- rbind(tbtest, tbtrain)

##Extract Mean and Standard Deviation of each measurement
indexmeanstd <- grep("mean()|std()", colnames(tb))
indexsubject <- grep("Subject", colnames(tb), fixed = TRUE)
indexactivity <- grep("Activity", colnames(tb), fixed = TRUE)
tbmeanstd <- tb[, c(indexsubject, indexactivity, indexmeanstd)]

##Clean variable names by replacing the dots with a single space
temp <- gsub(".", " ", colnames(tbmeanstd), fixed = TRUE)
colnames(tbmeanstd) <-  gsub("^ *|(?<= ) | *$", "", temp, perl=T)
colnames(tbmeanstd) <-  gsub("std", "StandardDeviation", colnames(tbmeanstd), fixed = TRUE)

##Creates a second, independent tidy data set with the average of each
##variable for each activity and each subject

listsplit <- split(tbmeanstd[,c(-1,-2)], list(tbmeanstd$Subject, tbmeanstd$Activity)) ##split by subject and activity
tbsplitmean <- t(sapply(listsplit, colMeans)) ## Results in dataframe with subject and activity as rows and features as columns
colnames(tbsplitmean) <-  paste("Average", colnames(tbsplitmean))
listtemp <- strsplit(rownames(tbsplitmean), split = "\\.") ##Append subject and activity as variables
tbtemp <- do.call(rbind.data.frame, listtemp)
colnames(tbtemp) <-  c("Subject", "Activity") 
tbsubjectactivity <- cbind(tbtemp, tbsplitmean)

write.table(tbsubjectactivity, "GetCleanDataProject_Step5.txt", row.names = FALSE)
```
=======
Project-GetCleanData
====================
>>>>>>> cc15e6bb82a503c13f235f2d0e827d8a4cb230f4
