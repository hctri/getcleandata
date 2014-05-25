# assuming this file is at the same level as the data folder `UCI HAR Dataset`
run.analysis <- function(data.path="./UCI HAR Dataset") {
    
    # 0. load data
    
    X.train <- read.table(paste(data.path, "train", "X_train.txt", sep="/"))
    y.train <- read.table(paste(data.path, "train", "y_train.txt", sep="/"))
    subject.train <- read.table(paste(data.path, "train", "subject_train.txt", sep="/"))
    
    X.test <- read.table(paste(data.path, "test", "X_test.txt", sep="/"))
    y.test <- read.table(paste(data.path, "test", "y_test.txt", sep="/"))
    subject.test <- read.table(paste(data.path, "test", "subject_test.txt", sep="/"))
    
    # 1. merge data
    data.train <- cbind(X.train, y.train, subject.train)
    data.test <- cbind(X.test, y.test, subject.test)
    
    data.all <- rbind(data.train, data.test)
    
    # 2. extract
    # first of all, load `features.txt` to decSubjecte which features to be extract
    features <- read.table(paste(data.path, "features.txt", sep="/"), stringsAsFactors=F)
    # name the data set
    colnames(data.all) <- c(features[,2], "Activity", "Subject")
    # then retrieve the subset which is measured by std and mean
    features.focus <- features[grep("mean\\(\\)|std\\(\\)", features[,2]),]
    data.sub <- data.all[,c(features.focus[,1], 562, 563)]
    
    # 3. change activity classes to activity names
    activity.labels <- read.table(paste(data.path, "activity_labels.txt", sep="/"), stringsAsFactors=F)
    for (label in activity.labels[,1]) {
        data.sub[data.sub$Activity == label, "Activity"] <- activity.labels[activity.labels[,1] == label, 2]
    }
    
    # 4. nightmare, the colnames
    # just replace some abbr
    names(data.sub) <- gsub("Mag", ".Magnitude", names(data.sub))
    names(data.sub) <- gsub("Acc", ".Accelerometer", names(data.sub))
    names(data.sub) <- gsub("mean\\(\\)", "Mean", names(data.sub))
    names(data.sub) <- gsub("std\\(\\)", "StandardDeviation", names(data.sub))
    names(data.sub) <- gsub("Gyro", "Gyroscope", names(data.sub))
    names(data.sub) <- gsub("X", "Xaxis", names(data.sub))
    names(data.sub) <- gsub("Y", "Yaxis", names(data.sub))
    names(data.sub) <- gsub("Z", "Zaxis", names(data.sub))
    names(data.sub) <- gsub("-", ".", names(data.sub))
    
    # 5. for each volunteer, find the stats when he/she is doing the 6 activities
    # so obviously, 30 * 6 = 180, it should be 180 rows
    result <- aggregate(data.sub[,c(1:66)],by=list(data.sub$Subject, data.sub$Activity), FUN=mean)
    colnames(result) <- c("Subject", "Activity", paste(rep("Avg", 66), colnames(result[,c(3:68)]), sep="."))
    
    
    # return it, do anything with that.
    result
}