# Codebook

## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


### Variable Descriptions


| Variable | Description
-----------|-------------
| Subject |  Subject ID
| Activity |  The activity performed
| TimeDomain.BodyAcceleration.Mean...X |  Mean time for acceleration of body for X direction
| TimeDomain.BodyAcceleration.Mean...Y |  Mean time for acceleration of body for Y direction
| TimeDomain.BodyAcceleration.Mean...Z |  Mean time for acceleration of body for Z direction
| TimeDomain.BodyAcceleration.StandardDeviation...X |  Standard deviation of time for acceleration of body for X direction
| TimeDomain.BodyAcceleration.StandardDeviation...Y |  Standard deviation of time for acceleration of body for Y direction
| TimeDomain.BodyAcceleration.StandardDeviation...Z |  Standard deviation of time for acceleration of body for Z direction
| TimeDomain.GravityAcceleration.Mean...X |  Mean time of acceleration of gravity for X direction
| TimeDomain.GravityAcceleration.Mean...Y |  Mean time of acceleration of gravity for Y direction
| TimeDomain.GravityAcceleration.Mean...Z |  Mean time of acceleration of gravity for Z direction
| TimeDomain.GravityAcceleration.StandardDeviation...X |  Standard deviation of time of acceleration of gravity for X direction
| TimeDomain.GravityAcceleration.StandardDeviation...Y |  Standard deviation of time of acceleration of gravity for Y direction
| TimeDomain.GravityAcceleration.StandardDeviation...Z |  Standard deviation of time of acceleration of gravity for Z direction
| TimeDomain.BodyAccelerationJerk.Mean...X |  Mean time of body acceleration jerk for X direction
| TimeDomain.BodyAccelerationJerk.Mean...Y |  Mean time of body acceleration jerk for Y direction
| TimeDomain.BodyAccelerationJerk.Mean...Z |  Mean time of body acceleration jerk for Z direction
| TimeDomain.BodyAccelerationJerk.StandardDeviation...X |  Standard deviation of time of body acceleration jerk for X direction
| TimeDomain.BodyAccelerationJerk.StandardDeviation...Y |  Standard deviation of time of body acceleration jerk for Y direction
| TimeDomain.BodyAccelerationJerk.StandardDeviation...Z |  Standard deviation of time of body acceleration jerk for Z direction
| TimeDomain.BodyAngularSpeed.Mean...X |  Mean body gyroscope measurement for X direction
| TimeDomain.BodyAngularSpeed.Mean...Y |  Mean body gyroscope measurement for Y direction
| TimeDomain.BodyAngularSpeed.Mean...Z |  Mean body gyroscope measurement for Z direction
| TimeDomain.BodyAngularSpeed.StandardDeviation...X |  Standard deviation of body gyroscope measurement for X direction
| TimeDomain.BodyAngularSpeed.StandardDeviation...Y |  Standard deviation of body gyroscope measurement for Y direction
| TimeDomain.BodyAngularSpeed.StandardDeviation...Z |  Standard deviation of body gyroscope measurement for Z direction
| TimeDomain.BodyAngularAcceleration.Mean...X |  Mean jerk signal of body for X direction
| TimeDomain.BodyAngularAcceleration.Mean...Y |  Mean jerk signal of body for Y direction
| TimeDomain.BodyAngularAcceleration.Mean...Z |  Mean jerk signal of body for Z direction
| TimeDomain.BodyAngularAcceleration.StandardDeviation...X |  Standard deviation of jerk signal of body for X direction
| TimeDomain.BodyAngularAcceleration.StandardDeviation...Y |  Standard deviation of jerk signal of body for Y direction
| TimeDomain.BodyAngularAcceleration.StandardDeviation...Z |  Standard deviation of jerk signal of body for Z direction
| TimeDomain.BodyAccelerationMagnitude.Mean.. |  Mean magnitude of body Acc
| TimeDomain.BodyAccelerationMagnitude.StandardDeviation.. |  Standard deviation of magnitude of body Acc
| TimeDomain.GravityAccelerationMagnitude.Mean.. |  Mean gravity acceleration magnitude
| TimeDomain.GravityAccelerationMagnitude.StandardDeviation.. |  Standard deviation of gravity acceleration magnitude
| TimeDomain.BodyAccelerationJerkMagnitude.Mean.. |  Mean magnitude of body acceleration jerk
| TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation.. |  Standard deviation of magnitude of body acceleration jerk
| TimeDomain.BodyAngularSpeedMagnitude.Mean.. |  Mean magnitude of body gyroscope measurement
| TimeDomain.BodyAngularSpeedMagnitude.StandardDeviation.. |  Standard deviation of magnitude of body gyroscope measurement
| TimeDomain.BodyAngularAccelerationMagnitude.Mean.. |  Mean magnitude of body body gyroscope jerk measurement
| TimeDomain.BodyAngularAccelerationMagnitude.StandardDeviation.. |  Standard deviation of magnitude of body body gyroscope jerk measurement
| FrequencyDomain.BodyAcceleration.Mean...X |  Mean frequency of body acceleration for X direction
| FrequencyDomain.BodyAcceleration.Mean...Y |  Mean frequency of body acceleration for Y direction
| FrequencyDomain.BodyAcceleration.Mean...Z |  Mean frequency of body acceleration for Z direction
| FrequencyDomain.BodyAcceleration.StandardDeviation...X |  Standard deviation of frequency of body acceleration for X direction
| FrequencyDomain.BodyAcceleration.StandardDeviation...Y |  Standard deviation of frequency of body acceleration for Y direction
| FrequencyDomain.BodyAcceleration.StandardDeviation...Z |  Standard deviation of frequency of body acceleration for Z direction
| FrequencyDomain.BodyAccelerationJerk.Mean...X |  Mean frequency of body accerlation jerk for X direction
| FrequencyDomain.BodyAccelerationJerk.Mean...Y |  Mean frequency of body accerlation jerk for Y direction
| FrequencyDomain.BodyAccelerationJerk.Mean...Z |  Mean frequency of body accerlation jerk for Z direction
| FrequencyDomain.BodyAccelerationJerk.StandardDeviation...X |  Standard deviation frequency of body accerlation jerk for X direction
| FrequencyDomain.BodyAccelerationJerk.StandardDeviation...Y |  Standard deviation frequency of body accerlation jerk for Y direction
| FrequencyDomain.BodyAccelerationJerk.StandardDeviation...Z |  Standard deviation frequency of body accerlation jerk for Z direction
| FrequencyDomain.BodyAngularSpeed.Mean...X |  Mean frequency of body gyroscope measurement for X direction
| FrequencyDomain.BodyAngularSpeed.Mean...Y |  Mean frequency of body gyroscope measurement for Y direction
| FrequencyDomain.BodyAngularSpeed.Mean...Z |  Mean frequency of body gyroscope measurement for Z direction
| FrequencyDomain.BodyAngularSpeed.StandardDeviation...X |  Standard deviation frequency of body gyroscope measurement for X direction
| FrequencyDomain.BodyAngularSpeed.StandardDeviation...Y |  Standard deviation frequency of body gyroscope measurement for Y direction
| FrequencyDomain.BodyAngularSpeed.StandardDeviation...Z |  Standard deviation frequency of body gyroscope measurement for Z direction
| FrequencyDomain.BodyAccelerationMagnitude.Mean.. |  Mean frequency of body acceleration magnitude
| FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation.. |  Standard deviation of frequency of body acceleration magnitude
| FrequencyDomain.BodyBodyAccelerationJerkMagnitude.Mean.. |  Mean frequency of body acceleration jerk magnitude
| FrequencyDomain.BodyBodyAccelerationJerkMagnitude.StandardDeviation.. |  Standard deviation of frequency of body acceleration jerk magnitude
| FrequencyDomain.BodyBodyAngularSpeedMagnitude.Mean.. |  Mean frequency of magnitude of body gyroscope measurement
| FrequencyDomain.BodyBodyAngularSpeedMagnitude.StandardDeviation.. |  Standard deviation of frequency of magnitude of body gyroscope measurement
| FrequencyDomain.BodyBodyAngularAccelerationMagnitude.Mean.. |  Mean frequency of magnitude of body gyroscope jerk measurement
| FrequencyDomain.BodyBodyAngularAccelerationMagnitude.StandardDeviation.. |  Standard deviation frequency of magnitude of body gyroscope jerk measurement


