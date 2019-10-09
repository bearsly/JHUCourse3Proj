This repository includes the following files:

* `run_analysis.R` : applies the required 5-step transformations to the downloaded data for the project

* `ProjData.txt` : the required tidy data produced by the R script `run_analysis.R`

* `CodeBook.md` : describes the data set in the `ProjData.txt` file.

* `README.md`


## How the script `run_analysis.R` works

This script uses libraries `dplyr` and `data.table`. 

After downloading and unzipping the data for the project, the 5 steps in the project instruction are followed. 

1. Merges the training and the test sets to create one data set

   First use the `fread()` function to assign data in the following files to variables:

   `features.txt`
   `activity_labels.txt`
   `train/subject_train.txt`
   `train/X_train.txt`
   `train/y_train.txt`
   `test/subject_test.txt`
   `test/X_test.txt`
   `test/y_test.txt`

   The data are then merged with functions `rbind()` and `cbind()`. The parameter `check.names = TRUE` is used in `cbind()` for avoiding duplicate column names (which exist in our downloaded data).

2. Measurements on the mean and standard deviation for each measurement are extracted with the function `select()`.

   The variable `TidyData` is created by subsetting `Merged_Data`, selecting only columns of `subject`, `code` and the measurements on the mean and standard deviation (std) for each measurement.

3. Uses descriptive activity names to name the activities in the data set.

   Numbers in `code` column of `TidyData` replaced with corresponding activity taken from second column of the `activities` variable.

4. Appropriately labels the data set with descriptive variable names.

   The abbreviations, `Acc` and `Gyro`, are reserved to avoid too long variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

   This is done by the convenient syntax from `data.table`.
