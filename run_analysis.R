##
## Script for project assignement implementing the following
## Reads the subject, activity, and measurements files from the train and test data sets 
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Assigns descriptive activity names to name the activities in the data set
## Labels the data set with descriptive variable names. 
## Creates and writes to a file tidy data set with the average of each variable for each activity and each subject. 
##
## Input:
##  dir - name of directory where UCI HAR Dataset resides
## Output:
##  Creates a text file tidy_data2.txt
##
run_analysis <- function(dir="UCI HAR Dataset") {
  
  ## Read training dataset
  s_train <- read.table(paste0(dir, "/train/subject_train.txt"))
  y_train <- read.table(paste0(dir, "/train/y_train.txt"))
  x_train <- read.table(paste0(dir, "/train/X_train.txt"))

  ## Read test dataset
  s_test <- read.table(paste0(dir, "/test/subject_test.txt"))
  y_test <- read.table(paste0(dir, "/test/y_test.txt"))
  x_test <- read.table(paste0(dir, "/test/X_test.txt"))
                       
  # Step 1 - Merge datasets
  syx_train <- cbind(s_train, y_train, x_train) # train data frame with subject, activity, measurements
  syx_test <- cbind(s_test, y_test, x_test)     # test data frame with subject, activity, measurements
  syx = rbind(syx_train, syx_test)              # train+test data frame with subject, activity, measurements
  
  ## Step 2 - Extract features with mean or std of measurements
  features <- read.table(paste0(dir, "/features.txt"))
  mean_std_cols <- grep("mean|std", features[,2]) # get all feature names containing 'mean' or 'std'
  syx_mean_std <- syx[c(1, 2, mean_std_cols+2)]   # data frame with subject, activity, mean|std columns
  
  ## Step 3 - Label activities
  activity <- read.table(paste0(dir, "/activity_labels.txt"))
  for (i in 1:length(activity[,1])){
    syx_mean_std[,2] <- gsub(activity[i,1], activity[i,2], syx_mean_std[,2]) # replace activity # with label
  }
  
  ## Step 4 - Descriptive labels for variables NEED MORE CLEANUP?
  features_ms = gsub("\\(\\)", "", features[mean_std_cols,2])     # remove hypens
  features_ms = gsub("-", "_", features_ms)                       # replace dash by underscore
  colnames(syx_mean_std) <- c("subject", "activity", features_ms) # renames columns
  
  ## Step 5 - Average across features and output
  ncols = dim(syx_mean_std)[2] # aggregate for all columns except for first two - subject and activity
  h <- aggregate(syx_mean_std[,3:ncols], by=list(syx_mean_std$subject, syx_mean_std$activity), FUN=mean)
  # add AVG_ to columns names to denote AVERAGE was taken
  colnames(h) = gsub("^", "AVG_", names(h))
  # correct name for first two columns
  colnames(h)[1:2] = c("Subject", "Activity")
  write.table(h, row.name=FALSE, file="tidy_data2.txt")
}