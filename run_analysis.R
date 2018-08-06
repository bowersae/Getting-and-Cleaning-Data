library(dplyr)
library(data.table)

#Download and unzip file
fileurl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
if (!file.exists('./UCI HAR Dataset.zip')){
  download.file(fileurl, './UCI HAR Dataset.zip', mode = 'wb')
  unzip("UCI HAR Dataset.zip", exdir = getwd())
}

#Read in test files
subjecttest<- read.table("./UCI HAR Dataset/test/subject_test.txt")
xtest<- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest<- read.table("./UCI HAR Dataset/test/Y_test.txt")

#Read in training files
subjecttrain<- read.table("./UCI HAR Dataset/train/subject_train.txt")
xtrain<- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain<- read.table("./UCI HAR Dataset/train/Y_train.txt")

#Merge all training and test sets to create one data set
allactivity <- rbind(ytrain, ytest)
allfeatures<-rbind(xtrain,xtest)
allsubject<-rbind(subjecttrain, subjecttest)

#Names each column of data with descriptive names
featuretitles<- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
names(allsubject)<-c("Subject")
names(allactivity)<-c("Activity")
names(allfeatures)<-featuretitles$V2

#Changes names of activities to be more descriptive
allactivity[,1]<-read.table("./UCI HAR Dataset/activity_labels.txt")[allactivity[,1],2]

#Extracts only the measurements on the mean and standard deviation for each measurement
featuremeanstd <- allfeatures[,grep("-(mean|std)\\(\\)", read.table("./UCI HAR Dataset/features.txt")[,2])]
names(featuremeanstd)<-read.table("./UCI HAR Dataset/features.txt")[grep("-(mean|std)\\(\\)", read.table("./UCI HAR Dataset/features.txt")[,2]),2]

#Merges all data into one table
combsubact<-cbind(allsubject,allactivity)
meanstddata<-cbind(featuremeanstd,combsubact)

#Appropriately labels the data set with descriptive variable names
names(meanstddata)<- make.names(names(meanstddata))
names(meanstddata)<-gsub('Acc',"Acceleration",names(meanstddata))
names(meanstddata)<-gsub('GyroJerk',"AngularAcceleration",names(meanstddata))
names(meanstddata)<-gsub('Gyro',"AngularSpeed",names(meanstddata))
names(meanstddata)<-gsub('Mag',"Magnitude",names(meanstddata))
names(meanstddata)<-gsub('^t',"TimeDomain.",names(meanstddata))
names(meanstddata)<-gsub('^f',"FrequencyDomain.",names(meanstddata))
names(meanstddata)<-gsub('\\.mean',".Mean",names(meanstddata))
names(meanstddata)<-gsub('\\.std',".StandardDeviation",names(meanstddata))
names(meanstddata)<-gsub('Freq\\.',"Frequency.",names(meanstddata))
names(meanstddata)<-gsub('Freq$',"Frequency",names(meanstddata))

#Creates an independent tidy data set with the average of each variable for each activity and each subject
tidydata<-aggregate(. ~Subject + Activity, meanstddata, mean)
tidydata<-tidydata[order(tidydata$Subject, tidydata$Activity),]
write.table(tidydata, file="tidydata.txt", row.name = FALSE)
