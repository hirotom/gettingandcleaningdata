# Getting and Cleaning Data
# Course Project
# 2014.09.13


# [1] Get data labels

    # features.txt provides column names for X_test.txt and X_train.txt
    features.data = read.table("features.txt")

    # activity_labels.txt provides translation between activity numbers in
    # Y_test.txt and Y_train.txt to names of each activity
    activity_labels.data = read.table("activity_labels.txt")

# [2] Put together data for test set

    # read test data sets (X_test.txt, Y_test.txt, subject_test.txt)
    X_test.data = read.table("X_test.txt")
    Y_test.data = read.table("Y_test.txt")
    subject_test.data = read.table("subject_test.txt")
    
    # create a new column to identify the source of data (either test or train)
    source.data = matrix(rep("test",nrow(X_test.data)),nrow(X_test.data),1)
    colnames(source.data)="data_source"
    
    # Use descriptive activity names to name the activities in the data set
    Y_test.data = merge(Y_test.data,activity_labels.data, by.x="V1", by.y="V1",all=TRUE)
    
    # Appropriately label the data set with descriptive variable names
    colnames(X_test.data) = features.data[,2]
    colnames(Y_test.data) = c("activity_id", "activity_name")
    colnames(subject_test.data) = "subject_id"

    # combine test data into one
    test.data = cbind(X_test.data, Y_test.data, subject_test.data, source.data)
    
    # free up memory
    rm(X_test.data, Y_test.data, subject_test.data)
    
# [3] Put together data for train set
    
    # read test data sets (X_train.txt, Y_train.txt, subject_train.txt)
    X_train.data = read.table("X_train.txt")
    Y_train.data = read.table("Y_train.txt")
    subject_train.data = read.table("subject_train.txt")
    
    # create a new column to identify the source of data (either test or train)
    source.data = matrix(rep("train",nrow(X_train.data)),nrow(X_train.data),1)
    colnames(source.data)="data_source"
    
    # Use descriptive activity names to name the activities in the data set
    Y_train.data = merge(Y_train.data,activity_labels.data, by.x="V1", by.y="V1",all=TRUE)
    
    # Appropriately label the data set with descriptive variable names
    colnames(X_train.data) = features.data[,2]
    colnames(Y_train.data) = c("activity_id", "activity_name")
    colnames(subject_train.data) = "subject_id"
    
    # combine test data into one
    train.data = cbind(X_train.data, Y_train.data, subject_train.data, source.data)
    
    # free up memory
    rm(X_train.data, Y_train.data, subject_train.data)

# [4] Merge the training and the test sets to create one data set
    
    merged.data = rbind(test.data, train.data)
    
    # free up memory
    rm(train.data, test.data)
    
# [5] Extract only the measurements on the mean and standard deviation for each measurement.
    
    col_subset = c(563,564) # activity_name, subject_id
    col_subset = c(col_subset, 1,2,3,4,5,6) # tBodyAccu
    col_subset = c(col_subset, 41,42,43,44,45,46) #tGravityAcc
    col_subset = c(col_subset, 81,82,83,84,85,86) #tBodyAccJerk
    col_subset = c(col_subset, 121,122,123,124,125,126) #tBodyGyro
    col_subset = c(col_subset, 161,162,163,164,165,166) #tBodyGyroJerk
    col_subset = c(col_subset, 201,202) #tBodyAccMag
    col_subset = c(col_subset, 214,215) #tGravityAccMag
    col_subset = c(col_subset, 227,228) #tBodyAccJerkMag
    col_subset = c(col_subset, 240,241) #tBodyGyroMag
    col_subset = c(col_subset, 253,254) #tBodyGyroJerkMag
    col_subset = c(col_subset, 266,267,268,269,270,271) #fBodyAcc
    col_subset = c(col_subset, 345,346,347,348,349,350) #fBodyAccJerk
    col_subset = c(col_subset, 424,425,426,427,428,429) #fBodyGyro
    col_subset = c(col_subset, 503,504) #fBodyAccMag
    col_subset = c(col_subset, 516,517) #fBodyBodyAccJerkMag
    col_subset = c(col_subset, 529,530) #fBodyBodyGyroMag
    col_subset = c(col_subset, 542,543) #fBodyBodyGyroJerkMag    
    
    merged.subset = merged.data[,col_subset]
    
# [6] Create a second, independent tidy data set with the average of each variable for each activity and each subject.

    merged.tidy = aggregate(. ~ activity_name+subject_id, merged.subset, mean)
    
    # order
    merged.tidy = merged.tidy[order(merged.tidy$activity_name, merged.tidy$subject_id),]
    
    # write to file
    write.table(merged.tidy, file = "tidydata_out.txt", row.name=FALSE)
