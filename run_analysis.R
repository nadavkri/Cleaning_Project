
# Download the data file if does not exist

 if(!file.exists("./data")){dir.create("./data")}
 if (!file.exists("./data/Dataset.zip")){fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 download.file(fileUrl,destfile="./data/Dataset.zip")
}


# Unzip the file (if did not unzip previously)

if (!file.exists("./data/UCI HAR Dataset")) { 
    unzip(zipfile="./data/Dataset.zip",exdir="./data")
 }

# Read Files
# The files that this script will use are
##    features.txt
##    activity_labels.txt
##    test/subject_test.txt
##    test/X_test.txt
##    test/y_test.txt
##    train/subject_train.txt
##    train/X_train.txt
##    train/y_train.txt

# Read the Descriptive Files
Features <- read.table("./data/UCI HAR Dataset/features.txt" ,header = FALSE)
ActivityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt" ,header = FALSE)
# Read the Test Data Files
DataActivityTest  <- read.table("./data/UCI HAR Dataset/test/Y_test.txt" ,header = FALSE)
DataSubjectTest  <- read.table("./data/UCI HAR Dataset/test/subject_test.txt" ,header = FALSE)
DataFeaturesTest  <- read.table("./data/UCI HAR Dataset/test/X_test.txt" ,header = FALSE)
# Read the Train Data Files
DataActivityTrain  <- read.table("./data/UCI HAR Dataset/train/Y_train.txt" ,header = FALSE)
DataSubjectTrain  <- read.table("./data/UCI HAR Dataset/train/subject_train.txt" ,header = FALSE)
DataFeaturesTrain  <- read.table("./data/UCI HAR Dataset/train/X_train.txt" ,header = FALSE)

# set names to files columns
names(DataActivityTest)<- c("activity")
names(DataActivityTrain)<- c("activity")
names(DataSubjectTest)<-c("subject")
names(DataSubjectTrain)<-c("subject")
names(DataFeaturesTest) <- Features[,2]
names(DataFeaturesTrain) <- Features[,2]


# Merge the training and the test sets to create one data set
##    Merge the Test data sets ( by column bind)
    DataSubject <- rbind(DataSubjectTrain, DataSubjectTest)
    DataActivity<- rbind(DataActivityTrain, DataActivityTest)
    DataFeatures<- rbind(DataFeaturesTrain, DataFeaturesTest)
## Merge all columns to create a single data set
Data <- cbind(DataFeatures,DataSubject,DataActivity)

# Extracts only the measurements on the mean and standard deviation for each measurement
##     select only the column names with std() or mean()
    SelectedFeatures<-Features$V2[grep("mean\\(\\)|std\\(\\)", Features$V2)]
##     Subset the data according to the selected features
    SelectedFeaturesNames<-c(as.character(SelectedFeatures), "subject", "activity" )
    Data<-subset(Data,select=SelectedFeaturesNames)

# Use descriptive activity names to name the activities in the data set
Data$activity <- factor(Data$activity, levels = ActivityLabels[,1], labels = ActivityLabels[,2])

# Appropriately labels the data set with descriptive variable names
names(Data)<-gsub("mean()", "Mean", names(Data))
names(Data)<-gsub("std()", "STD", names(Data))
names(Data)<-gsub("^t", "Time", names(Data))
names(Data)<-gsub("^f", "Frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject
TidyData<-aggregate(. ~subject + activity, Data, mean)
write.table(TidyData, file = "TidyData.txt",row.name=FALSE)
