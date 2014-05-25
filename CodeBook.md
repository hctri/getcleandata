## Code book for data created by run_analysis.R

This document describes variables of data created by **run_analysis.R**.

Author: Krator (kratorado@gmail.com)

----------


## Overview

### Record
Each record in the dataset, contains the average measurement by the sensors of one volunteer(specified by Subject), with a certain activity(specified by Activity). For example, a record with Subject==1 and Activity==WALKING contains data of volunteer with ID==1 when he/she is walking.

### Variables
Excluding Subject and Activity, there are 66 variables for a record, which is described below.

`
Avg.tBody.Accelerometer.Mean.Xaxis
Avg.tBody.Accelerometer.Mean.Yaxis 
Avg.tBody.Accelerometer.Mean.Zaxis 
Avg.tBody.Accelerometer.StandardDeviation.Xaxis 
Avg.tBody.Accelerometer.StandardDeviation.Yaxis 
Avg.tBody.Accelerometer.StandardDeviation.Zaxis 
Avg.tGravity.Accelerometer.Mean.Xaxis 
Avg.tGravity.Accelerometer.Mean.Yaxis 
Avg.tGravity.Accelerometer.Mean.Zaxis 
Avg.tGravity.Accelerometer.StandardDeviation.Xaxis 
Avg.tGravity.Accelerometer.StandardDeviation.Yaxis 
Avg.tGravity.Accelerometer.StandardDeviation.Zaxis 
Avg.tBody.AccelerometerJerk.Mean.Xaxis 
Avg.tBody.AccelerometerJerk.Mean.Yaxis 
Avg.tBody.AccelerometerJerk.Mean.Zaxis 
Avg.tBody.AccelerometerJerk.StandardDeviation.Xaxis 
Avg.tBody.AccelerometerJerk.StandardDeviation.Yaxis 
Avg.tBody.AccelerometerJerk.StandardDeviation.Zaxis 
Avg.tBodyGyroscope.Mean.Xaxis 
Avg.tBodyGyroscope.Mean.Yaxis 
Avg.tBodyGyroscope.Mean.Zaxis 
Avg.tBodyGyroscope.StandardDeviation.Xaxis 
Avg.tBodyGyroscope.StandardDeviation.Yaxis 
Avg.tBodyGyroscope.StandardDeviation.Zaxis 
Avg.tBodyGyroscopeJerk.Mean.Xaxis 
Avg.tBodyGyroscopeJerk.Mean.Yaxis 
Avg.tBodyGyroscopeJerk.Mean.Zaxis 
Avg.tBodyGyroscopeJerk.StandardDeviation.Xaxis 
Avg.tBodyGyroscopeJerk.StandardDeviation.Yaxis 
Avg.tBodyGyroscopeJerk.StandardDeviation.Zaxis 
Avg.tBody.Accelerometer.Magnitude.Mean 
Avg.tBody.Accelerometer.Magnitude.StandardDeviation 
Avg.tGravity.Accelerometer.Magnitude.Mean 
Avg.tGravity.Accelerometer.Magnitude.StandardDeviation 
Avg.tBody.AccelerometerJerk.Magnitude.Mean 
Avg.tBody.AccelerometerJerk.Magnitude.StandardDeviation 
Avg.tBodyGyroscope.Magnitude.Mean 
Avg.tBodyGyroscope.Magnitude.StandardDeviation 
Avg.tBodyGyroscopeJerk.Magnitude.Mean 
Avg.tBodyGyroscopeJerk.Magnitude.StandardDeviation 
Avg.fBody.Accelerometer.Mean.Xaxis 
Avg.fBody.Accelerometer.Mean.Yaxis 
Avg.fBody.Accelerometer.Mean.Zaxis 
Avg.fBody.Accelerometer.StandardDeviation.Xaxis 
Avg.fBody.Accelerometer.StandardDeviation.Yaxis 
Avg.fBody.Accelerometer.StandardDeviation.Zaxis 
Avg.fBody.AccelerometerJerk.Mean.Xaxis 
Avg.fBody.AccelerometerJerk.Mean.Yaxis 
Avg.fBody.AccelerometerJerk.Mean.Zaxis 
Avg.fBody.AccelerometerJerk.StandardDeviation.Xaxis 
Avg.fBody.AccelerometerJerk.StandardDeviation.Yaxis 
Avg.fBody.AccelerometerJerk.StandardDeviation.Zaxis 
Avg.fBodyGyroscope.Mean.Xaxis 
Avg.fBodyGyroscope.Mean.Yaxis 
Avg.fBodyGyroscope.Mean.Zaxis 
Avg.fBodyGyroscope.StandardDeviation.Xaxis 
Avg.fBodyGyroscope.StandardDeviation.Yaxis 
Avg.fBodyGyroscope.StandardDeviation.Zaxis 
Avg.fBody.Accelerometer.Magnitude.Mean 
Avg.fBody.Accelerometer.Magnitude.StandardDeviation 
Avg.fBodyBody.AccelerometerJerk.Magnitude.Mean 
Avg.fBodyBody.AccelerometerJerk.Magnitude.StandardDeviation 
Avg.fBodyBodyGyroscope.Magnitude.Mean 
Avg.fBodyBodyGyroscope.Magnitude.StandardDeviation 
Avg.fBodyBodyGyroscopeJerk.Magnitude.Mean 
Avg.fBodyBodyGyroscopeJerk.Magnitude.StandardDeviation
`

For those variables named with `Xaxis/Yaxis/Zaxis` and `Mean/StandardDeviation`, `Xaxis/Yaxis/Zaxis` means the measurement in the X/Y/Z direction, `Mean/StandardDeviation` means the variable was estimated from mean value or standard deviation.

`Accelerometer/Gyroscope` tells that this variable is measured from what kind of sensor.

`t/f` after `Avg.` tells this is measured in frequency or time

`Jerk` is Jerk signal and `Magnitude` is magnitude signal

All of these 66 variables are average value.
