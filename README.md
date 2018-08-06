# Getting-and-Cleaning-Data

## Purpose
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. 
You will be required to submit: 
1.	A tidy data set as described below
2.	A link to a Github repository with your script for performing the analysis
3.	A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md
4.	Include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

## Objectives
run_analysis.R performs the following
1.	Downloads and unzips data from the following site into the working directory
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2.	Merges the training and the test sets to create one data set
3.	Extracts only the measurements on the mean and standard deviation for each measurement
4.	Uses descriptive activity names to name the activities in the data set
5.	Appropriately labels the data set with descriptive variable names
6.	An independent tidy data set with the average of each variable for each activity and each subject is saved as tidydata.txt and within the working directory

## run_analysis.R 
1.	Downloads the UCI HAR Dataset into the working directory
2.	Unzips the file into the UCI HAR Dataset folder within the working directory
3.	The files for subject (subjecttest, subjecttrain), activity (ytest, ytrain), and features (xtest, xtrain) are downloaded for both the test and training information
4.	Merges test and training information together for each of the file types (allsubject, allactivity, and allfeatures)
5.	Gives descriptive names to each column of data (“Subject”, “Activity”, features.txt)
6.	Changes activity names to be more descriptive (activity_labels.txt)
7.	Extracts only mean and standard deviation measurements for each measurement
8.	Merges all data into one table (meanstddata)
9.	Appropriately labels the data set with descriptive variable names (replacing Acc, GyroJerk, Gyro, Mag, etc.)
10.	Creates an independent tidy data set with the average of each variable for each activity and each subject (tidydata.txt)
