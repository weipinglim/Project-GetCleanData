### Introduction

This is a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description of data: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The Samsung dataset contains reading for features from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Variables
There are 81 variables. There are 79 variables of features representing mean and standard deviation of the test results averaged based on 2 variables - subject and activity.

* Subject - The ID of the subject performing the test
* Activity - Description of the activity performed by the subject during the test
* Average <results>- Average of mean and standard deviation of features for each subject and activity. The data has NO UNITS as the original data has been normalized. The 79 features are:

  * Averages of the mean of the body acceleration signals in 3 axis - X, Y and Z.	
    * Average tBodyAcc mean X                    
    * Average tBodyAcc mean Y                       
    * Average tBodyAcc mean Z 

  * Averages of the standard deviation of the body acceleration signals n 3 axis - X, Y and Z.                 
    * Average tBodyAcc StandardDeviation X          
    * Average tBodyAcc StandardDeviation Y          
    * Average tBodyAcc StandardDeviation Z  

  * Averages of the mean of the gravity acceleration signals n 3 axis - X, Y and Z.     
    * Average tGravityAcc mean X                    
    * Average tGravityAcc mean Y                    
    * Average tGravityAcc mean Z 

  * Averages of the standard deviation of the gravity acceleration signals n 3 axis - X, Y and Z.                       
    * Average tGravityAcc StandardDeviation X       
    * Average tGravityAcc StandardDeviation Y       
    * Average tGravityAcc StandardDeviation Z 

  * Averages of the mean of the body linear acceleration in 3 axis - X, Y and Z.      
    * Average tBodyAccJerk mean X                   
    * Average tBodyAccJerk mean Y                   
    * Average tBodyAccJerk mean Z 

  * Averages of the standard deviation of the body linear acceleration in 3 axis - X, Y and Z.                     
    * Average tBodyAccJerk StandardDeviation X      
    * Average tBodyAccJerk StandardDeviation Y      
    * Average tBodyAccJerk StandardDeviation Z 

  * Averages of the mean of the body angular velocity in 3 axis - X, Y and Z.       
    * Average tBodyGyro mean X                      
    * Average tBodyGyro mean Y                      
    * Average tBodyGyro mean Z

  * Averages of the standard deviation of the body angular velocity in 3 axis - X, Y and Z.                       
    * Average tBodyGyro StandardDeviation X        
    * Average tBodyGyro StandardDeviation Y         
    * Average tBodyGyro StandardDeviation Z

  * Averages of the mean of the body angular velocity Jerk signals in in 3 axis - X, Y and Z.     
    * Average tBodyGyroJerk mean X                  
    * Average tBodyGyroJerk mean Y                  
    * Average tBodyGyroJerk mean Z

  * Averages of the standard deviation of the body angular velocity Jerk signals in in 3 axis - X, Y and Z.                 
    * Average tBodyGyroJerk StandardDeviation X    
    * Average tBodyGyroJerk StandardDeviation Y     
    * Average tBodyGyroJerk StandardDeviation Z

  * Averages of the mean and standard deviation of the magnitude of the body acceleration calculated using the Euclidean norm.   
    * Average tBodyAccMag mean                       
    * Average tBodyAccMag StandardDeviation

  * Averages of the mean and standard deviation of the magnitude of the gravity acceleration calculated using the Euclidean norm.              
    * Average tGravityAccMag mean
    * Average tGravityAccMag StandardDeviation

  * Averages of the mean and standard deviation of the magnitude of the body acceleration Jerk signals calculated using the Euclidean norm.           
    * Average tBodyAccJerkMag mean                 
    * Average tBodyAccJerkMag StandardDeviation

  * Averages of the mean and standard deviation of the magnitude of the body angular velocity calculated using the Euclidean norm.          
    * Average tBodyGyroMag mean                     
    * Average tBodyGyroMag StandardDeviation 

  * Averages of the mean and standard deviation of the magnitude of the body angular velocity Jerk signals calculated using the Euclidean norm.            
    * Average tBodyGyroJerkMag mean                  
    * Average tBodyGyroJerkMag StandardDeviation 

  * Averages of the mean of the frequency domain signals of the body acceleration in 3 axis - X, Y, and Z.   
    * Average fBodyAcc mean X                     
    * Average fBodyAcc mean Y                       
    * Average fBodyAcc mean Z      

  * Averages of the standard deviation of the frequency domain signals of the body acceleration in 3 axis - X, Y, and Z.                 
    * Average fBodyAcc StandardDeviation X         
    * Average fBodyAcc StandardDeviation Y          
    * Average fBodyAcc StandardDeviation Z

  * Averages of the mean frequency of the frequency domain signals of the body acceleration in 3 axis - X, Y, and Z.           
    * Average fBodyAcc meanFreq X                  
    * Average fBodyAcc meanFreq Y                   
    * Average fBodyAcc meanFreq Z

  * Averages of the mean of the frequency domain signals of the body acceleration Jerk signals in 3 axis - X, Y, and Z.                    
    * Average fBodyAccJerk mean X                   
    * Average fBodyAccJerk mean Y                   
    * Average fBodyAccJerk mean Z 

  * Averages of the standard deviation of the frequency domain signals of the body acceleration Jerk signals in 3 axis - X, Y, and Z.                     
    * Average fBodyAccJerk StandardDeviation X      
    * Average fBodyAccJerk StandardDeviation Y      
    * Average fBodyAccJerk StandardDeviation Z 

  * Averages of the mean frequency of the frequency domain signals of the body acceleration Jerk signals in 3 axis - X, Y, and Z.     
    * Average fBodyAccJerk meanFreq X               
    * Average fBodyAccJerk meanFreq Y               
    * Average fBodyAccJerk meanFreq Z

  * Averages of the mean of the frequency domain signals of the body angular velocity in 3 axis - X, Y, and Z.            
    * Average fBodyGyro mean X                      
    * Average fBodyGyro mean Y                      
    * Average fBodyGyro mean Z 

  * Averages of the standard deviation of the frequency domain signals of the body angular velocity in 3 axis - X, Y, and Z.                      
    * Average fBodyGyro StandardDeviation X         
    * Average fBodyGyro StandardDeviation Y         
    * Average fBodyGyro StandardDeviation Z

  * Averages of the mean frequency of the frequency domain signals of the body angular velocity in 3 axis - X, Y, and Z.          
    * Average fBodyGyro meanFreq X                  
    * Average fBodyGyro meanFreq Y                  
    * Average fBodyGyro meanFreq Z 

  * Averages of the mean magnitude of the frequency domain signals of the body acceleration in 3 axis - X, Y, and Z.                  
    * Average fBodyAccMag mean                        
    * Average fBodyAccMag StandardDeviation           
    * Average fBodyAccMag meanFreq 

  * Averages of the mean, standard deviation and mean frequency of frequency domain signals of the magnitude of the body acceleration calculated using the Euclidean norm.                     
    * Average fBodyBodyAccJerkMag mean                
    * Average fBodyBodyAccJerkMag StandardDeviation
    * Average fBodyBodyAccJerkMag meanFreq  

  * Averages of the mean, standard deviation and mean frequency of frequency domain signals of the magnitude of the body angular velocity calculated using the Euclidean norm.           
    * Average fBodyBodyGyroMag mean      
    * Average fBodyBodyGyroMag StandardDeviation      
    * Average fBodyBodyGyroMag meanFreq

  * Averages of the mean, standard deviation and mean frequency of frequency domain signals of the magnitude of the body angular velocity Jerk signals calculated using the Euclidean norm.                  
    * Average fBodyBodyGyroJerkMag mean               
    * Average fBodyBodyGyroJerkMag StandardDeviation  
    * Average fBodyBodyGyroJerkMag meanFreq

### Data Cleaning
1. The original data comprises the 7352 records of training data and 2947 records of test data. The datasets contain 562 variables each representing a feature. Both datasets were merged into one data set.

2. The records in the were matched to the Subject IDs and the Activities performed during the observation. These 2 variables are added to the dataset.

3. A new dataset containing only the variables Subject ID, Activity and features representing mean and standard deviation is created.  Edits were made to the variable names to make them more readable.

4. The averages of the features for each Subject ID and Activity are calculated and exported into a text file - GetCleanDataProject_Step5.txt
