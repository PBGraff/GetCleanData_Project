# Code Book
====================

Guide to variables for Getting & Cleaning Data course project

## Overall guide

Measurements here are the time-domain readings from the accelerometers and gyroscopes of Samsung Galaxy S phones worn by participants in the study. These measurements were also Fast Fourier Transformed to obtain frequency-domain readings. For each, a mean and standard deviation (std) were computed. This tidy data set contains the average mean and average standard deviation over many observations for each study subject and activity performed. This guide lists the variables 

## Time Domain Vairables
These are all prefixed with "time.".

BodyAccel - Body's acceleration (above 0.3 Hz)
*  (01) .X.mean - mean of measurements in X direction
*  (02) .Y.mean - mean of measurements in Y direction
*  (03) .Z.mean - mean of measurements in Z direction
*  (04) .X.std - standard deviation of measurements in X direction
*  (05) .Y.std - standard deviation of measurements in Y direction
*  (06) .Z.std - standard deviation of measurements in Z direction
*  (31) .mag.mean - mean of magnitude of measurements
*  (32) .mag.std - standard deviation of magnitude of measurements

GravityAccel - Gravity's acceleration (below 0.3 Hz)
*  (07) .X.mean - mean of measurements in X direction
*  (08) .Y.mean - mean of measurements in Y direction
*  (09) .Z.mean - mean of measurements in Z direction
*  (10) .X.std - standard deviation of measurements in X direction
*  (11) .Y.std - standard deviation of measurements in Y direction
*  (12) .Z.std - standard deviation of measurements in Z direction
*  (33) .mag.mean - mean of magnitude of measurements
*  (34) .mag.std - standard deviation of magnitude of measurements

BodyAccelJerk - derivative of Body's acceleration (above 0.3 Hz)
*  (13) .X.mean - mean of measurements in X direction
*  (14) .Y.mean - mean of measurements in Y direction
*  (15) .Z.mean - mean of measurements in Z direction
*  (16) .X.std - standard deviation of measurements in X direction
*  (17) .Y.std - standard deviation of measurements in Y direction
*  (18) .Z.std - standard deviation of measurements in Z direction
*  (35) .mag.mean - mean of magnitude of measurements
*  (36) .mag.std - standard deviation of magnitude of measurements

BodyGyro - Body's rotation
*  (19) .X.mean - mean of measurements in X direction
*  (20) .Y.mean - mean of measurements in Y direction
*  (21) .Z.mean - mean of measurements in Z direction
*  (22) .X.std - standard deviation of measurements in X direction
*  (23) .Y.std - standard deviation of measurements in Y direction
*  (24) .Z.std - standard deviation of measurements in Z direction
*  (37) .mag.mean - mean of magnitude of measurements
*  (38) .mag.std - standard deviation of magnitude of measurements

BodyGyroJerk - derivative of Body's rotation
*  (25) .X.mean - mean of measurements in X direction
*  (26) .Y.mean - mean of measurements in Y direction
*  (27) .Z.mean - mean of measurements in Z direction
*  (28) .X.std - standard deviation of measurements in X direction
*  (29) .Y.std - standard deviation of measurements in Y direction
*  (30) .Z.std - standard deviation of measurements in Z direction
*  (39) .mag.mean - mean of magnitude of measurements
*  (40) .mag.std - standard deviation of magnitude of measurements

## Frequency Domain Variables

These variables are the FFT (Fast Fourier Transform) of their respective time-domain variables and are all prefaced with "freq.".

BodyAccel - Body's acceleration (above 0.3 Hz)
*  (41) .X.mean - mean of measurements in X direction
*  (42) .Y.mean - mean of measurements in Y direction
*  (43) .Z.mean - mean of measurements in Z direction
*  (44) .X.std - standard deviation of measurements in X direction
*  (45) .Y.std - standard deviation of measurements in Y direction
*  (46) .Z.std - standard deviation of measurements in Z direction
*  (59) .mag.mean - mean of magnitude of measurements
*  (60) .mag.std - standard deviation of magnitude of measurements

BodyAccelJerk - derivative of Body's acceleration (above 0.3 Hz)
*  (47) .X.mean - mean of measurements in X direction
*  (48) .Y.mean - mean of measurements in Y direction
*  (49) .Z.mean - mean of measurements in Z direction
*  (50) .X.std - standard deviation of measurements in X direction
*  (51) .Y.std - standard deviation of measurements in Y direction
*  (52) .Z.std - standard deviation of measurements in Z direction
*  (61) .mag.mean - mean of magnitude of measurements
*  (62) .mag.std - standard deviation of magnitude of measurements

BodyGyro - Body's rotation
*  (53) .X.mean - mean of measurements in X direction
*  (54) .Y.mean - mean of measurements in Y direction
*  (55) .Z.mean - mean of measurements in Z direction
*  (56) .X.std - standard deviation of measurements in X direction
*  (57) .Y.std - standard deviation of measurements in Y direction
*  (58) .Z.std - standard deviation of measurements in Z direction
*  (63) .mag.mean - mean of magnitude of measurements
*  (64) .mag.std - standard deviation of magnitude of measurements

BodyGyroJerk - derivative of Body's rotation
*  (65) .mag.mean - mean of magnitude of measurements
*  (66) .mag.std - standard deviation of magnitude of measurements

## Label Variables

These two additional variables are factor labels to indicate which subject the measurements are for and which activity they were performing.

* (67) Subject - factor with 30 levels labeled as integers from 1 to 30 to indicate which of the 30 participants was being measured.
* (68) Activity - factor with 6 levels labeled to indicate which of the activities was being performed (in order: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING)
