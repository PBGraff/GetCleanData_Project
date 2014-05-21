## Getting & Cleaning Data Course Project
====================

Course project for the Getting and Cleaning Data class on Coursera.

## Downloading and unzipping the data
This script can be run from wherever you like, it will download and unzip the data itself. These first lines may be commented out if the unzipped data is already present in the current working directory.


## Running the script
Simply run source("run_analysis.R") and it will download and unzip the raw data. It will then load this data in, combine the train and test sets, and summarize the data by calculating the mean of all regular variables labeled by "mean" or "std" for each subject and each activity. This is then printed to "tidyData.csv" for later use.

## Choice of variables to summarize
The "features_info.txt" file in the data set indicates a list of variables that directly measured and some of their (Fast) Fourier transforms. These are as follows:
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The mean and standard deviation for each of these variables has been averaged over all observations for each subject (#1-30) and each activity. Activities are as follows:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

This results in 66 total variables, each with 180 values. The variable names have been expanded for clarity.

## Organization of Tidy Data
The mean over observations for the 66 variables are in the first 66 columns of the data set. The last 2 columns are factors describing the subject and the activity.
