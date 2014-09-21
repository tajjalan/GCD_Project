## R Script for Getting and Cleaning Data Course Project

An R script *run_analysis.R* has been created for the project assignment.  
The input and output for the script is:  
Input:  
 *dir* - name of directory where UCI HAR Dataset resides  
 default value of *dir* is *UCI HAR Dataset*  
Output:  
Writes out a text file *tidy_data2.txt*  

The expected contents of *dir* which is used by the script *run_analysis.R* are:  

1. Two subdirectories *train* and *test*. *train* contains data for training, *test* for test.   
The *test* directory is expected to contain the files (and similarly for *train*):   
*subject_test.txt* - contains subject ID (subject file)   
*Y_test.txt* - contains activity ID  (acitivity file)  
*X_test.txt* - contains the data for a subject ID and activity ID (measurement file)

2. The following files:  
*activity_labels.txt* - provides descriptive labels for activity ID used in *Y_test.txt*  
*features.txt* - provides names for the features which are the columns in *X_test.txt*  

In addition the input directory *dir* also contains the files *features_info.txt* and *README.txt* which provide some details on the dataset. These files are not used by the script itself.  

The script *run_analysis.R* implements the following:  

1. Reads the subject, activity, and measurements files from the train and test data sets.   

2. Merges the training and the test sets to create one data set by   
  i) using *cbind* to merge subject, activity, measurement data frames for each of the train and test data sets  
 ii) using *rbind* to merge the merged train and test data sets.  
 Note that the merged data set has as column 1 the subject id, column 2 the activity id, and the rest of columns are the measurements  

3. Extracts only the measurements on the mean and standard deviation for each measurement by  
 i) read feature names from the *features.txt* file and identify columns with *mean* or *std* in its name  
 ii) extract the corresponding columns from the merged data set in 2  
 Note that now the merged data set has as column 1 the subject id, column 2 the activity id, and the rest of columns are the measurements with *mean* or *std* in thier name.  

4. Assigns descriptive activity names to name the activities in the data set by  
 i) read activity names from *activity_labels.txt*  
 ii) use *gsub* function to replace the activity id in column 2 of the merged data set with activity description  

5. Labels the data set with descriptive variable names by   
 i) use *gsub* to replace hypens by underscore and remove backslash in the features names read in 3(i)  
 ii) use *colnames* to replace the column names for the merged data set by the modified feature names in i) above  

6. Average of each measurement for each activity and subject by using *aggregate* function. The column names of the resulting data set is modified by addding "AVG_" in front of column names for measurements to indicate that averaging was done.  

7. Writes the tidy data set in step 6 to text file *tidy_data2.txt* 


