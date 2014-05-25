## Doc for run_analysis.R

This document describes what the script file **run_analysis.R** does. 

Author: Krator (kratorado@gmail.com)

----------


## Usage

You can put the script anywhere you like. But I suggest to put it in the folder which contains the original data folder so that you don't have to specify the folder path.

To run the script in R, `source('/path/to/script/run_analysis.R')` and then `run.analysis()`

## What it does
------------

### 1. Read the original data and combine them
* Read the data from the 6 data files, X_train.txt, y_train.txt, subject_train.txt X_test.txt, y_test.txt, subject_test.txt
* Use cbind to create training set and test set, both of which have 563 columns
* Use rbind to merge training set and test set.

### 2. Extract variables to do with std() and mean()
* Get features data by reading features.txt
* Add the feature names to the dataset from previous step
* Take variables related to std() and mean(), this is implemented by `grep()`

### 3. Replace activity labels to activity names
* Get activity names by reading activity_labels.txt
* Replace the activity labels to corresponding names

### 4. Give the variables decriptive names
* Replace some abbreviation words. For example, Acc -> Accelerometer
* Substitute hyphens to dots
* std() to StandardDeviation and mean() to Mean

### 5. Create the clean data
* Use `aggregate` to calculate the average of each variable, group by Subject(volunteers' ID) and Activity
* Return the new data set created by `aggregate`
