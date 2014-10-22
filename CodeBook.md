### Introduction

This is a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description of data: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Variables
There are 81 variables. There are 79 variables of features representing mean and standard deviation of the test results averaged based on 2 variables - subject and activity.

* Subject - The ID of the subjects performing the test
* Activity - Description of the activity performed by the subject during the test
* Average <results>- Average of results for each subject and activity. The data has NO UNITS as the original data has been normalized.
  * Average tBodyAcc mean X                    
  * Average tBodyAcc mean Y                       
  * Average tBodyAcc mean Z                       
  * Average tBodyAcc StandardDeviation X          
  * Average tBodyAcc StandardDeviation Y          
  * Average tBodyAcc StandardDeviation Z          
  * Average tGravityAcc mean X                    
  * Average tGravityAcc mean Y                    
  * Average tGravityAcc mean Z                    
  * Average tGravityAcc StandardDeviation X       
  * Average tGravityAcc StandardDeviation Y       
  * Average tGravityAcc StandardDeviation Z       
  * Average tBodyAccJerk mean X                   
  * Average tBodyAccJerk mean Y                   
  * Average tBodyAccJerk mean Z                   
  * Average tBodyAccJerk StandardDeviation X      
  * Average tBodyAccJerk StandardDeviation Y      
  * Average tBodyAccJerk StandardDeviation Z      
  * Average tBodyGyro mean X                      
  * Average tBodyGyro mean Y                      
  * Average tBodyGyro mean Z                      
  * Average tBodyGyro StandardDeviation X        
  * Average tBodyGyro StandardDeviation Y         
  * Average tBodyGyro StandardDeviation Z         
  * Average tBodyGyroJerk mean X                  
  * Average tBodyGyroJerk mean Y                  
  * Average tBodyGyroJerk mean Z                  
  * Average tBodyGyroJerk StandardDeviation X    
  * Average tBodyGyroJerk StandardDeviation Y     
  * Average tBodyGyroJerk StandardDeviation Z     
  * Average tBodyAccMag mean                       
  * Average tBodyAccMag StandardDeviation           
  * Average tGravityAccMag mean                    
  * Average tGravityAccMag StandardDeviation        
  * Average tBodyAccJerkMag mean                 
  * Average tBodyAccJerkMag StandardDeviation       
  * Average tBodyGyroMag mean                     
  * Average tBodyGyroMag StandardDeviation          
  * Average tBodyGyroJerkMag mean                  
  * Average tBodyGyroJerkMag StandardDeviation    
  * Average fBodyAcc mean X                     
  * Average fBodyAcc mean Y                       
  * Average fBodyAcc mean Z                       
  * Average fBodyAcc StandardDeviation X         
  * Average fBodyAcc StandardDeviation Y          
  * Average fBodyAcc StandardDeviation Z          
  * Average fBodyAcc meanFreq X                  
  * Average fBodyAcc meanFreq Y                   
  * Average fBodyAcc meanFreq Z                   
  * Average fBodyAccJerk mean X                   
  * Average fBodyAccJerk mean Y                   
  * Average fBodyAccJerk mean Z                   
  * Average fBodyAccJerk StandardDeviation X      
  * Average fBodyAccJerk StandardDeviation Y      
  * Average fBodyAccJerk StandardDeviation Z      
  * Average fBodyAccJerk meanFreq X               
  * Average fBodyAccJerk meanFreq Y               
  * Average fBodyAccJerk meanFreq Z               
  * Average fBodyGyro mean X                      
  * Average fBodyGyro mean Y                      
  * Average fBodyGyro mean Z                      
  * Average fBodyGyro StandardDeviation X         
  * Average fBodyGyro StandardDeviation Y         
  * Average fBodyGyro StandardDeviation Z         
  * Average fBodyGyro meanFreq X                  
  * Average fBodyGyro meanFreq Y                  
  * Average fBodyGyro meanFreq Z                  
  * Average fBodyAccMag mean                        
  * Average fBodyAccMag StandardDeviation           
  * Average fBodyAccMag meanFreq                    
  * Average fBodyBodyAccJerkMag mean                
  * Average fBodyBodyAccJerkMag StandardDeviation   
  * Average fBodyBodyAccJerkMag meanFreq            
  * Average fBodyBodyGyroMag mean                   
  * Average fBodyBodyGyroMag StandardDeviation      
  * Average fBodyBodyGyroMag meanFreq               
  * Average fBodyBodyGyroJerkMag mean               
  * Average fBodyBodyGyroJerkMag StandardDeviation  
  * Average fBodyBodyGyroJerkMag meanFreq

### Data Cleaning
1. The original data comprises the 7352 records of training data and 2947 records of test data. The datasets contain 562 variables each representing a feature. Both datasets were merged into one data set.

2. The records in the were matched to the Subject IDs and the Activities performed during the observation. These 2 variables are added to the dataset.

3. A new dataset containing only the variables Subject ID, Activity and features representing mean and standard deviation is created.  Edits were made to the variable names to make them more readable.

4. The averages of the features for each Subject ID and Activity are calculated and exported into a text file - GetCleanDataProject_Step5.txt
