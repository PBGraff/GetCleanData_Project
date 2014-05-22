# data downloaded from
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# on 5/21/14
# info on source available at
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# download and unzip file
# comment out if not needed
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile="UCI_HAR_Dataset.zip",method="curl")
unzip("UCI_HAR_Dataset.zip")

# read in feature names and activity label names
features <- read.table("UCI HAR Dataset//features.txt",colClasses=c("integer","character"))
activities <- read.table("UCI HAR Dataset//activity_labels.txt",colClasses=c("integer","character"))

# read in train and test data and subject info
Xtrain <- read.table("UCI HAR Dataset//train//X_train.txt",col.names=features[,2])
Xtest <- read.table("UCI HAR Dataset//test//X_test.txt",col.names=features[,2])
Ytrain <- read.table("UCI HAR Dataset//train//y_train.txt",col.names="Activity")
Ytest <- read.table("UCI HAR Dataset//test//y_test.txt",col.names="Activity")
train_subject <- read.table("UCI HAR Dataset//train//subject_train.txt",col.names="Subject",colClasses="integer")
test_subject <- read.table("UCI HAR Dataset//test//subject_test.txt",col.names="Subject",colClasses="integer")

# merge train and test data sets
X <- rbind(Xtrain,Xtest)
Y <- rbind(Ytrain,Ytest)
subj <- rbind(train_subject,test_subject)

# down-select features that have mean or std in name and re-label
X <- X[,grep(pattern="mean|std",x=names(X),ignore.case=TRUE)]
X <- X[,grep(pattern="angle|meanFreq",x=names(X),ignore.case=TRUE,invert=TRUE)]
names(X) <- c("time.BodyAccel.X.mean","time.BodyAccel.Y.mean","time.BodyAccel.Z.mean",
              "time.BodyAccel.X.std","time.BodyAccel.Y.std","time.BodyAccel.Z.std",
              "time.GravityAccel.X.mean","time.GravityAccel.Y.mean","time.GravityAccel.Z.mean",
              "time.GravityAccel.X.std","time.GravityAccel.Y.std","time.GravityAccel.Z.std",
              "time.BodyAccelJerk.X.mean","time.BodyAccelJerk.Y.mean","time.BodyAccelJerk.Z.mean",
              "time.BodyAccelJerk.X.std","time.BodyAccelJerk.Y.std","time.BodyAccelJerk.Z.std",
              "time.BodyGyro.X.mean","time.BodyGyro.Y.mean","time.BodyGyro.Z.mean",
              "time.BodyGyro.X.std","time.BodyGyro.Y.std","time.BodyGyro.Z.std",
              "time.BodyGyroJerk.X.mean","time.BodyGyroJerk.Y.mean","time.BodyGyroJerk.Z.mean",
              "time.BodyGyroJerk.X.std","time.BodyGyroJerk.Y.std","time.BodyGyroJerk.Z.std",
              "time.BodyAccel.mag.mean","time.BodyAccel.mag.std",
              "time.GravityAccel.mag.mean","time.GravityAccel.mag.std",
              "time.BodyAccelJerk.mag.mean","time.BodyAccelJerk.mag.std",
              "time.BodyGyro.mag.mean","time.BodyGyro.mag.std",
              "time.BodyGyroJerk.mag.mean","time.BodyGyroJerk.mag.std",
              "freq.BodyAccel.X.mean","freq.BodyAccel.Y.mean","freq.BodyAccel.Z.mean",
              "freq.BodyAccel.X.std","freq.BodyAccel.Y.std","freq.BodyAccel.Z.std",
              "freq.BodyAccelJerk.X.mean","freq.BodyAccelJerk.Y.mean","freq.BodyAccelJerk.Z.mean",
              "freq.BodyAccelJerk.X.std","freq.BodyAccelJerk.Y.std","freq.BodyAccelJerk.Z.std",
              "freq.BodyGyro.X.mean","freq.BodyGyro.Y.mean","freq.BodyGyro.Z.mean",
              "freq.BodyGyro.X.std","freq.BodyGyro.Y.std","freq.BodyGyro.Z.std",
              "freq.BodyAccel.mag.mean","freq.BodyAccel.mag.std",
              "freq.BodyAccelJerk.mag.mean","freq.BodyAccelJerk.mag.std",
              "freq.BodyGyro.mag.mean","freq.BodyGyro.mag.std",
              "freq.BodyGyroJerk.mag.mean","freq.BodyGyroJerk.mag.std")

# combine into one data frame
D <- cbind(X,subj,Y)

# label subject and activity factors
D$Subject <- factor(D$Subject,levels=seq(1,30))
D$Activity <- factor(D$Activity,levels=activities[,1],labels=activities[,2])

# function to calculate means of variables for each activity and subject pair
meanReshape <- function(D,i) {
        x <- tapply(D[,i],list(D$Activity,D$Subject),mean)
        dim(x) <- c(180,1)
        return(x)
}

# create tidy data set
tidyD <- c()
for (i in seq(1,length(names(X)))) {
        tidyD <- cbind(tidyD,meanReshape(D,i))
}
tidyD <- data.frame(tidyD)

# add on activity and subject labels
tidyD$Subject <- rep(factor(seq(1,30)),each=6)
tidyD$Activity <- rep(factor(seq(1,6),labels=activities[,2]),times=30)

# add names
names(tidyD) <- names(D)

# write tidy data
write.csv(tidyD,file="tidyData.csv",row.names=FALSE)
