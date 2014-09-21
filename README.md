gettingandcleaningdata
======================

Project assignment for Getting and Cleaning Data course on Coursera

# Assignment

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

# run_analysis.R script

Below describes the program flow:

###1. Get data labels
Read "features.txt" and "activity_labels.txt."

###2. Tidy the TEST data set
Read "X_test.txt," "Y_test.txt," then apply column names, merge activity labels based on activity id.  

###3. Tidy the TRAIN data set
Read "X_train.txt," "Y_train.txt," then apply column names, merge activity labels based on activity id.  

###4. Merge the TEST and TRAIN data sets
Row bind the TEST and TRAIN data sets

###5. Subset the merged data to only extract mean() and std() columns (along with activity name and subject id)
Hand pick the columns that contain desired data (only mean() and std() columns) and subset the data from step 4
Columns 1,2,3,4,5,6 contained tBodyAccu (mean()-X, mean()-Y, mean()-Z, std()-X, std()-Y, std()-Z)
Columns 41,42,43,44,45,46 contained tGravityAcc (mean()-X, mean()-Y, mean()-Z, std()-X, std()-Y, std()-Z)
Columns 81,82,83,84,85,86 contained tBodyAccJerk (mean()-X, mean()-Y, mean()-Z, std()-X, std()-Y, std()-Z)
Columns 121,122,123,124,125,126 contained tBodyGyro (mean()-X, mean()-Y, mean()-Z, std()-X, std()-Y, std()-Z)
Columns 161,162,163,164,165,166 contained tBodyGyroJerk (mean()-X, mean()-Y, mean()-Z, std()-X, std()-Y, std()-Z)
Columns 201,202 contained tBodyAccMag (mean(),std())
Columns 214,215 contained tGravityAccMag (mean(),std())
Columns 227,228 contained tBodyAccJerkMag (mean(),std())
Columns 240,241 contained tBodyGyroMag (mean(),std())
Columns 253,254 contained tBodyGyroJerkMag (mean(),std())
Columns 266,267,268,269,270,271 contained fBodyAcc (mean()-X, mean()-Y, mean()-Z, std()-X, std()-Y, std()-Z)
Columns 345,346,347,348,349,350 contained fBodyAccJerk (mean()-X, mean()-Y, mean()-Z, std()-X, std()-Y, std()-Z)
Columns 424,425,426,427,428,429 contained fBodyGyro (mean()-X, mean()-Y, mean()-Z, std()-X, std()-Y, std()-Z)
Columns 503,504 contained fBodyAccMag (mean(),std())
Columns 516,517 contained fBodyBodyAccJerkMag (mean(),std())
Columns 529,530 contained fBodyBodyGyroMag (mean(),std())
Columns 542,543 contained fBodyBodyGyroJerkMag (mean(),std()) 


###6. Calculate the average of the subset data, sort, and output to text file
