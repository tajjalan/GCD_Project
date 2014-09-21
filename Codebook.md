# Codebook for Getting and Cleaning Data Project

The dataset consists of 180 rows and 81 columns.  
The first column is the Subject ID.   
The second column is the Activity Description.  
The remaining columns are the averages of the measurements of each Subject and Activity pair.  

The features in the 79 columns are listed below.    
All the values are normalized to lie within [-1, 1] and are unitless.  
In the names below  
*t* denotes time domain, *f* denotes frequency domain  
*X*, *Y*, *Z* denote X, Y, Z axis  
*mean* denotes mean, *std* standard deviation  
*AVG* denotes that the average of the measurement was taken across all the observations for the subject and activity pair.

"AVG_tBodyAcc_mean_X"  
"AVG_tBodyAcc_mean_Y"  
"AVG_tBodyAcc_mean_Z"  
"AVG_tBodyAcc_std_X"  
"AVG_tBodyAcc_std_Y"  
"AVG_tBodyAcc_std_Z"  
"AVG_tGravityAcc_mean_X"  
"AVG_tGravityAcc_mean_Y"  
"AVG_tGravityAcc_mean_Z"  
"AVG_tGravityAcc_std_X"  
"AVG_tGravityAcc_std_Y"  
"AVG_tGravityAcc_std_Z"  
"AVG_tBodyAccJerk_mean_X"  
"AVG_tBodyAccJerk_mean_Y"  
"AVG_tBodyAccJerk_mean_Z"  
"AVG_tBodyAccJerk_std_X"  
"AVG_tBodyAccJerk_std_Y"  
"AVG_tBodyAccJerk_std_Z"  
"AVG_tBodyGyro_mean_X"  
"AVG_tBodyGyro_mean_Y"  
"AVG_tBodyGyro_mean_Z"  
"AVG_tBodyGyro_std_X"  
"AVG_tBodyGyro_std_Y"  
"AVG_tBodyGyro_std_Z"  
"AVG_tBodyGyroJerk_mean_X"  
"AVG_tBodyGyroJerk_mean_Y"  
"AVG_tBodyGyroJerk_mean_Z"  
"AVG_tBodyGyroJerk_std_X"  
"AVG_tBodyGyroJerk_std_Y"  
"AVG_tBodyGyroJerk_std_Z"  
"AVG_tBodyAccMag_mean"  
"AVG_tBodyAccMag_std"  
"AVG_tGravityAccMag_mean"  
"AVG_tGravityAccMag_std"  
"AVG_tBodyAccJerkMag_mean"  
"AVG_tBodyAccJerkMag_std"  
"AVG_tBodyGyroMag_mean"  
"AVG_tBodyGyroMag_std"  
"AVG_tBodyGyroJerkMag_mean"  
"AVG_tBodyGyroJerkMag_std"  
"AVG_fBodyAcc_mean_X"  
"AVG_fBodyAcc_mean_Y"  
"AVG_fBodyAcc_mean_Z"  
"AVG_fBodyAcc_std_X"  
"AVG_fBodyAcc_std_Y"  
"AVG_fBodyAcc_std_Z"  
"AVG_fBodyAcc_meanFreq_X"  
"AVG_fBodyAcc_meanFreq_Y"  
"AVG_fBodyAcc_meanFreq_Z"  
"AVG_fBodyAccJerk_mean_X"  
"AVG_fBodyAccJerk_mean_Y"  
"AVG_fBodyAccJerk_mean_Z"  
"AVG_fBodyAccJerk_std_X"  
"AVG_fBodyAccJerk_std_Y"  
"AVG_fBodyAccJerk_std_Z"  
"AVG_fBodyAccJerk_meanFreq_X"  
"AVG_fBodyAccJerk_meanFreq_Y"  
"AVG_fBodyAccJerk_meanFreq_Z"  
"AVG_fBodyGyro_mean_X"  
"AVG_fBodyGyro_mean_Y"  
"AVG_fBodyGyro_mean_Z"  
"AVG_fBodyGyro_std_X"  
"AVG_fBodyGyro_std_Y"  
"AVG_fBodyGyro_std_Z"  
"AVG_fBodyGyro_meanFreq_X"  
"AVG_fBodyGyro_meanFreq_Y"  
"AVG_fBodyGyro_meanFreq_Z"  
"AVG_fBodyAccMag_mean"  
"AVG_fBodyAccMag_std"  
"AVG_fBodyAccMag_meanFreq"  
"AVG_fBodyBodyAccJerkMag_mean" 
"AVG_fBodyBodyAccJerkMag_std"  
"AVG_fBodyBodyAccJerkMag_meanFreq"  
"AVG_fBodyBodyGyroMag_mean"  
"AVG_fBodyBodyGyroMag_std"  
"AVG_fBodyBodyGyroMag_meanFreq"  
"AVG_fBodyBodyGyroJerkMag_mean"  
"AVG_fBodyBodyGyroJerkMag_std"   
"AVG_fBodyBodyGyroJerkMag_meanFreq"

The input measurement data that was manipulated by the script came from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

