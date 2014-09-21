# Code Book for Getting and Cleaning Data Course Project

This code book describes the steps performed to clean up the data:
* 0: Download the data if it does not already exists in the working directory.
* 1: Merges the training and the test sets to create one data set.
* 2: Extracts only the measurements on the mean and standard deviation for each measurement.
* 3: Uses descriptive activity names to name the activities in the data set.
* 4: Appropriately labels the data set with descriptive activity names.
* 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

====================================================================
This database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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

And following are all the variables extracted and transformed from the original database:

activity_id              : int  row identification field
subject_id               : int  
tBodyAcc.mean.X          : num  
tBodyAcc.mean.Y          : num  
tBodyAcc.mean.Z          : num  
tBodyAcc.std.X           : num  
tBodyAcc.std.Y           : num  
tBodyAcc.std.Z           : num  
tGravityAcc.mean.X       : num  
tGravityAcc.mean.Y       : num  
tGravityAcc.mean.Z       : num  
tGravityAcc.std.X        : num  
tGravityAcc.std.Y        : num  
tGravityAcc.std.Z        : num  
tBodyAccJerk.mean.X      : num  
tBodyAccJerk.mean.Y      : num  
tBodyAccJerk.mean.Z      : num  
tBodyAccJerk.std.X       : num  
tBodyAccJerk.std.Y       : num  
tBodyAccJerk.std.Z       : num  
tBodyGyro.mean.X         : num  
tBodyGyro.mean.Y         : num  
tBodyGyro.mean.Z         : num  
tBodyGyro.std.X          : num  
tBodyGyro.std.Y          : num  
tBodyGyro.std.Z          : num  
tBodyGyroJerk.mean.X     : num  
tBodyGyroJerk.mean.Y     : num  
tBodyGyroJerk.mean.Z     : num  
tBodyGyroJerk.std.X      : num  
tBodyGyroJerk.std.Y      : num  
tBodyGyroJerk.std.Z      : num  
tBodyAccMag.mean         : num  
tBodyAccMag.std          : num  
tGravityAccMag.mean      : num  
tGravityAccMag.std       : num  
tBodyAccJerkMag.mean     : num  
tBodyAccJerkMag.std      : num  
tBodyGyroMag.mean        : num  
tBodyGyroMag.std         : num  
tBodyGyroJerkMag.mean    : num  
tBodyGyroJerkMag.std     : num  
fBodyAcc.mean.X          : num  
fBodyAcc.mean.Y          : num  
fBodyAcc.mean.Z          : num  
fBodyAcc.std.X           : num  
fBodyAcc.std.Y           : num  
fBodyAcc.std.Z           : num  
fBodyAccJerk.mean.X      : num  
fBodyAccJerk.mean.Y      : num  
fBodyAccJerk.mean.Z      : num  
fBodyAccJerk.std.X       : num  
fBodyAccJerk.std.Y       : num  
fBodyAccJerk.std.Z       : num  
fBodyGyro.mean.X         : num  
fBodyGyro.mean.Y         : num  
fBodyGyro.mean.Z         : num  
fBodyGyro.std.X          : num  
fBodyGyro.std.Y          : num  
fBodyGyro.std.Z          : num  
fBodyAccMag.mean         : num  
fBodyAccMag.std          : num  
fBodyBodyAccJerkMag.mean : num  
fBodyBodyAccJerkMag.std  : num  
fBodyBodyGyroMag.mean    : num  
fBodyBodyGyroMag.std     : num  
fBodyBodyGyroJerkMag.mean: num  
fBodyBodyGyroJerkMag.std : num  
activity_label           : Factor (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
