#Human Activity Recognition Using Smartphones Dataset V1.0 Cleaned and Summarized
###Jason Hu

Original Data By:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
Link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Introduction

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

##Cleaned Data and Summarized Data provides
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- Average of all variables for each subject and activity. 

##Steps for Cleaning and Summarizing:

1, Merges the training and the test sets to create one data set.
2, Extracts only the measurements on the mean and standard deviation for each measurement.
3, Uses descriptive activity names to name the activities in the data set
4, Appropriately labels the data set with descriptive variable names.
5, From the data set in step 4, creates a second, independent tidy data set with the average     of each variable for each activity and each subject.


##Updated Files:


- 'README.txt'

- 'CleanSummarizeCodeBook.txt' Explanation for each variable

- 'cleaned.csv': (Step 1 to 4) Merged training set and test set, with specified labels and only mean and standard deviation data.

- 'summarized.csv' (Step 5) Averge of each variable for each activity and each subject.


###For Coursera Assignment: Getting and Cleaning Data Course Project


##License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.