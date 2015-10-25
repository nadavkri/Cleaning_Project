## Code Book


### Source Data

The data originates from an experiment carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured.
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.



### Source Files

The dataset includes the following files:
 	features.txt
    	activity_labels.txt
    	test/subject_test.txt
    	test/X_test.txt
   	test/y_test.txt
    	train/subject_train.txt
    	train/X_train.txt
   	train/y_train.txt


###  Rransformations Performed

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Create an independent tidy data set (TidyData.txt) with the average of each variable for each activity and each subject.


### The OutPut File - TidyData.txt
#### Identifiers

###### subject - An identifier of the subject who carried out the experiment
###### activity - The six  activity types performed during the experiment


#### Measurements 
###### TimeBodyAccelerometer-mean()-X
###### TimeBodyAccelerometer-mean()-Y
###### TimeBodyAccelerometer-mean()-Z
###### TimeBodyAccelerometer-STD()-X
###### TimeBodyAccelerometer-STD()-Y
###### TimeBodyAccelerometer-STD()-Z
###### TimeGravityAccelerometer-mean()-X                
###### TimeGravityAccelerometer-mean()-Y              
###### TimeGravityAccelerometer-mean()-Z                
###### TimeGravityAccelerometer-STD()-X               
###### TimeGravityAccelerometer-STD()-Y                 
###### TimeGravityAccelerometer-STD()-Z               
###### TimeBodyAccelerometerJerk-mean()-X               
###### TimeBodyAccelerometerJerk-mean()-Y             
###### TimeBodyAccelerometerJerk-mean()-Z              
###### TimeBodyAccelerometerJerk-STD()-X              
###### TimeBodyAccelerometerJerk-STD()-Y                
###### TimeBodyAccelerometerJerk-STD()-Z              
###### TimeBodyGyroscope-mean()-X                       
###### TimeBodyGyroscope-mean()-Y                     
###### TimeBodyGyroscope-mean()-Z                       
###### TimeBodyGyroscope-STD()-X                      
###### TimeBodyGyroscope-STD()-Y                        
###### TimeBodyGyroscope-STD()-Z                      
###### TimeBodyGyroscopeJerk-mean()-X                   
###### TimeBodyGyroscopeJerk-mean()-Y                 
###### TimeBodyGyroscopeJerk-mean()-Z                   
###### TimeBodyGyroscopeJerk-STD()-X                  
###### TimeBodyGyroscopeJerk-STD()-Y                    
###### TimeBodyGyroscopeJerk-STD()-Z                  
###### TimeBodyAccelerometerMagnitude-mean()            
###### TimeBodyAccelerometerMagnitude-STD()           
###### TimeGravityAccelerometerMagnitude-mean()         
###### TimeGravityAccelerometerMagnitude-STD()        
###### TimeBodyAccelerometerJerkMagnitude-mean()        
###### TimeBodyAccelerometerJerkMagnitude-STD()       
###### TimeBodyGyroscopeMagnitude-mean()                
###### TimeBodyGyroscopeMagnitude-STD()               
###### TimeBodyGyroscopeJerkMagnitude-mean()            
###### TimeBodyGyroscopeJerkMagnitude-STD()           
###### FrequencyBodyAccelerometer-mean()-X              
###### FrequencyBodyAccelerometer-mean()-Y            
###### FrequencyBodyAccelerometer-mean()-Z              
###### FrequencyBodyAccelerometer-STD()-X             
###### FrequencyBodyAccelerometer-STD()-Y               
###### FrequencyBodyAccelerometer-STD()-Z             
###### FrequencyBodyAccelerometerJerk-mean()-X          
###### FrequencyBodyAccelerometerJerk-mean()-Y        
###### FrequencyBodyAccelerometerJerk-mean()-Z          
###### FrequencyBodyAccelerometerJerk-STD()-X         
###### FrequencyBodyAccelerometerJerk-STD()-Y           
###### FrequencyBodyAccelerometerJerk-STD()-Z         
###### FrequencyBodyGyroscope-mean()-X                  
###### FrequencyBodyGyroscope-mean()-Y                
###### FrequencyBodyGyroscope-mean()-Z                  
###### FrequencyBodyGyroscope-STD()-X                 
###### FrequencyBodyGyroscope-STD()-Y                   
###### FrequencyBodyGyroscope-STD()-Z                 
###### FrequencyBodyAccelerometerMagnitude-mean()       
###### FrequencyBodyAccelerometerMagnitude-STD()      
###### FrequencyBodyAccelerometerJerkMagnitude-mean()   
###### FrequencyBodyAccelerometerJerkMagnitude-STD()  
###### FrequencyBodyGyroscopeMagnitude-mean()           
###### FrequencyBodyGyroscopeMagnitude-STD()          
###### FrequencyBodyGyroscopeJerkMagnitude-mean()       
###### FrequencyBodyGyroscopeJerkMagnitude-STD()  





