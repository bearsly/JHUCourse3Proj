# Code book for JHU Course 3 Project

This code book describes the data set in the `ProjData.txt` file.

* The transformations that were carried out to obtain the data set based on the source data are presented in the [Transformations](#transformations) section.
* The structure of the data set is described in the [Data](#data) section its variables are listed in the [Variables](#variables) section.

## Transformations <a name="variables"></a>
Data for the project is downloaded from

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following required transformations are applied to the downloaded data by the R script `run_analysis.R`.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set (`ProjData.txt`) with the average of each variable for each activity and each subject.

## Data <a name="data"></a>

The `ProjData.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the [Variables](#variables) section, and the following rows contain the values of these variables. 

## Variables <a name="variables"></a>

### Identifiers <a name="identifiers"></a>
* `subject`  ID of the test subject
* `activity` Type of activities performed 

### Measurements
<sub>Note: `Acc`=`Accelerometer`, `Gyro`=`Gyroscope`, `Freq`=`Frequency`</sub>

* `TimeBodyAcc.mean.X`
* `TimeBodyAcc.mean.Y`
* `TimeBodyAcc.mean.Z`
* `TimeGravityAcc.mean.X`
* `TimeGravityAcc.mean.Y`
* `TimeGravityAcc.mean.Z`
* `TimeBodyAccJerk.mean.X`
* `TimeBodyAccJerk.mean.Y`
* `TimeBodyAccJerk.mean.Z`
* `TimeBodyGyro.mean.X`
* `TimeBodyGyro.mean.Y`
* `TimeBodyGyro.mean.Z`
* `TimeBodyGyroJerk.mean.X`
* `TimeBodyGyroJerk.mean.Y`
* `TimeBodyGyroJerk.mean.Z`
* `TimeBodyAccMagnitude.mean`
* `TimeGravityAccMagnitude.mean`
* `TimeBodyAccJerkMagnitude.mean`
* `TimeBodyGyroMagnitude.mean`
* `TimeBodyGyroJerkMagnitude.mean`
* `FreqBodyAcc.mean.X`
* `FreqBodyAcc.mean.Y`
* `FreqBodyAcc.mean.Z`
* `FreqBodyAcc.meanFreq.X`
* `FreqBodyAcc.meanFreq.Y`
* `FreqBodyAcc.meanFreq.Z`
* `FreqBodyAccJerk.mean.X`
* `FreqBodyAccJerk.mean.Y`
* `FreqBodyAccJerk.mean.Z`
* `FreqBodyAccJerk.meanFreq.X`
* `FreqBodyAccJerk.meanFreq.Y`
* `FreqBodyAccJerk.meanFreq.Z`
* `FreqBodyGyro.mean.X`
* `FreqBodyGyro.mean.Y`
* `FreqBodyGyro.mean.Z`
* `FreqBodyGyro.meanFreq.X`
* `FreqBodyGyro.meanFreq.Y`
* `FreqBodyGyro.meanFreq.Z`
* `FreqBodyAccMagnitude.mean`
* `FreqBodyAccMagnitude.meanFreq`
* `FreqBodyAccJerkMagnitude.mean`
* `FreqBodyAccJerkMagnitude.meanFreq`
* `FreqBodyGyroMagnitude.mean`
* `FreqBodyGyroMagnitude.meanFreq`
* `FreqBodyGyroJerkMagnitude.mean`
* `FreqBodyGyroJerkMagnitude.meanFreq`
* `Angle.timeBodyAccMean.gravity.`
* `Angle.timeBodyAccJerkMeangravityMean.`
* `Angle.timeBodyGyroMean.gravityMean.`
* `Angle.timeBodyGyroJerkMean.gravityMean.`
* `Angle.X.gravityMean.`
* `Angle.Y.gravityMean.`
* `Angle.Z.gravityMean.`
* `TimeBodyAcc.std.X`
* `TimeBodyAcc.std.Y`
* `TimeBodyAcc.std.Z`
* `TimeGravityAcc.std.X`
* `TimeGravityAcc.std.Y`
* `TimeGravityAcc.std.Z`
* `TimeBodyAccJerk.std.X`
* `TimeBodyAccJerk.std.Y`
* `TimeBodyAccJerk.std.Z`
* `TimeBodyGyro.std.X`
* `TimeBodyGyro.std.Y`
* `TimeBodyGyro.std.Z`
* `TimeBodyGyroJerk.std.X`
* `TimeBodyGyroJerk.std.Y`
* `TimeBodyGyroJerk.std.Z`
* `TimeBodyAccMagnitude.std`
* `TimeGravityAccMagnitude.std`
* `TimeBodyAccJerkMagnitude.std`
* `TimeBodyGyroMagnitude.std`
* `TimeBodyGyroJerkMagnitude.std`
* `FreqBodyAcc.std.X`
* `FreqBodyAcc.std.Y`
* `FreqBodyAcc.std.Z`
* `FreqBodyAccJerk.std.X`
* `FreqBodyAccJerk.std.Y`
* `FreqBodyAccJerk.std.Z`
* `FreqBodyGyro.std.X`
* `FreqBodyGyro.std.Y`
* `FreqBodyGyro.std.Z`
* `FreqBodyAccMagnitude.std`
* `FreqBodyAccJerkMagnitude.std`
* `FreqBodyGyroMagnitude.std`
* `FreqBodyGyroJerkMagnitude.std`