library(dplyr)
library("data.table")

filename <- "JHUCourse3Proj.zip"

# Checking if zip file exists.
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename, method="curl")
}  

# Checking if folder exists
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}

# =====================================================================================================
# 1. Merges the training and the test sets to create one data set
features      <- fread("UCI HAR Dataset/features.txt",            col.names = c("n","functions"))
act_labels    <- fread("UCI HAR Dataset/activity_labels.txt",     col.names = c("code", "activity"))
subject_train <- fread("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train       <- fread("UCI HAR Dataset/train/X_train.txt",       col.names = features$functions)
y_train       <- fread("UCI HAR Dataset/train/y_train.txt",       col.names = "code")
subject_test  <- fread("UCI HAR Dataset/test/subject_test.txt",   col.names = "subject")
x_test        <- fread("UCI HAR Dataset/test/X_test.txt",         col.names = features$functions)
y_test        <- fread("UCI HAR Dataset/test/y_test.txt",         col.names = "code")

# If one uses "check.names=TRUE" in cbind, the following three lines are not needed.
# for (DT in list(x_train,x_test,y_train,y_test,subject_train,subject_test)) {
#     setnames(DT, make.names(names(DT), unique = TRUE))
# }

# # Join vertically.
X <- rbind(x_train,x_test)
Y <- rbind(y_train,y_test)
Subject <- rbind(subject_train, subject_test)

# Avoid duplicate column names with "check.names = TRUE"
Merged_Data <- cbind(Subject, Y, X, check.names = TRUE)

# =====================================================================================================
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
TidyData <- Merged_Data %>% select(subject, code, contains("mean"), contains("std"))

# =====================================================================================================
# 3. Uses descriptive activity names to name the activities in the data set.
TidyData$code <- act_labels[TidyData$code, 2]

# =====================================================================================================
# 4. Appropriately labels the data set with descriptive variable names.
names(TidyData)<-gsub("\\.\\.\\.", "\\.",  names(TidyData))
names(TidyData)<-gsub("BodyBody", "Body",  names(TidyData))
names(TidyData)<-gsub("^t",       "Time",  names(TidyData))
names(TidyData)<-gsub("^f",       "Freq",  names(TidyData))
names(TidyData)<-gsub("-mean()",  "Mean",  names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("-std()",   "STD",   names(TidyData), ignore.case = TRUE)
names(TidyData)<-gsub("angle",    "Angle", names(TidyData))
names(TidyData)<-gsub("\\.\\.",   "",      names(TidyData))
names(TidyData)[2] = "activity"
names(TidyData)<-gsub("Mag", "Magnitude", names(TidyData))
names(TidyData)<-gsub("tBody", "timeBody", names(TidyData))

# =====================================================================================================
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each 
# variable for each activity and each subject.
ProjData <- TidyData[, lapply(.SD, mean), by=.(subject, activity)]
# Could use:
# FinalData <- TidyData %>%
#     group_by(subject, activity) %>%
#     summarise_all(funs(mean))
write.table(ProjData, "ProjData.txt", row.name = FALSE)