#Form complete dataset for TEST results comprising feature names as field names, 
#subject id as a new column and activity id and labels as new columns
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