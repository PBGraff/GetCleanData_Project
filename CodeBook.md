## Code Book
====================

Guide to variables for Getting & Cleaning Data course project

## Overall guide

Measurements here are the time-domain readings from the accelerometers and gyroscopes of Samsung Galaxy S phones worn by participants in the study. These measurements were also Fast Fourier Transformed to obtain frequency-domain readings. For each, a mean and standard deviation (std) were computed. This tidy data set contains the average mean and average standard deviation over many observations for each study subject and activity performed. This guide lists the variables 

## Time Domain Vairables
These are all prefixed with "time."

BodyAccel - Body's acceleration (above 0.3 Hz)\\
  01) .X.mean - mean of measurements in X direction\\
  02) .Y.mean - mean of measurements in Y direction\\
  03) .Z.mean - mean of measurements in Z direction\\
  04) .X.std - standard deviation of measurements in X direction\\
  05) .Y.std - standard deviation of measurements in Y direction\\
  06) .Z.std - standard deviation of measurements in Z direction

GravityAccel - Gravity's acceleration (below 0.3 Hz)\\
  07) .X.mean - mean of measurements in X direction\\
  08) .Y.mean - mean of measurements in Y direction\\
  09) .Z.mean - mean of measurements in Z direction\\
  10) .X.std - standard deviation of measurements in X direction\\
  11) .Y.std - standard deviation of measurements in Y direction\\
  12) .Z.std - standard deviation of measurements in Z direction




"time.BodyAccelJerk.X.mean","time.BodyAccelJerk.Y.mean","time.BodyAccelJerk.Z.mean","time.BodyAccelJerk.X.std","time.BodyAccelJerk.Y.std","time.BodyAccelJerk.Z.std","time.BodyGyro.X.mean","time.BodyGyro.Y.mean","time.BodyGyro.Z.mean","time.BodyGyro.X.std","time.BodyGyro.Y.std","time.BodyGyro.Z.std","time.BodyGyroJerk.X.mean","time.BodyGyroJerk.Y.mean","time.BodyGyroJerk.Z.mean","time.BodyGyroJerk.X.std","time.BodyGyroJerk.Y.std","time.BodyGyroJerk.Z.std","time.BodyAccel.mag.mean","time.BodyAccel.mag.std","time.GravityAccel.mag.mean","time.GravityAccel.mag.std","time.BodyAccelJerk.mag.mean","time.BodyAccelJerk.mag.std","time.BodyGyro.mag.mean","time.BodyGyro.mag.std","time.BodyGyroJerk.mag.mean","time.BodyGyroJerk.mag.std","freq.BodyAccel.X.mean","freq.BodyAccel.Y.mean","freq.BodyAccel.Z.mean","freq.BodyAccel.X.std","freq.BodyAccel.Y.std","freq.BodyAccel.Z.std","freq.BodyAccelJerk.X.mean","freq.BodyAccelJerk.Y.mean","freq.BodyAccelJerk.Z.mean","freq.BodyAccelJerk.X.std","freq.BodyAccelJerk.Y.std","freq.BodyAccelJerk.Z.std","freq.BodyGyro.X.mean","freq.BodyGyro.Y.mean","freq.BodyGyro.Z.mean","freq.BodyGyro.X.std","freq.BodyGyro.Y.std","freq.BodyGyro.Z.std","freq.BodyAccel.mag.mean","freq.BodyAccel.mag.std","freq.BodyBodyAccelJerk.mag.mean","freq.BodyBodyAccelJerk.mag.std","freq.BodyBodyGyro.mag.mean","freq.BodyBodyGyro.mag.std","freq.BodyBodyGyroJerk.mag.mean","freq.BodyBodyGyroJerk.mag.std","Subject","Activity"
