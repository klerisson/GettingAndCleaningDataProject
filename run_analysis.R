#Fetch data

fileList <- dir(".", pattern = "UCI HAR Dataset$",full.names=TRUE)
#check if the folder is already in the current working directory
#otherwise download it
if(length(fileList) != 1){
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        temp <- tempfile()
        download.file(url = url, destfile = temp)
        unzip(temp)
        unlink(temp)
}

## 1. Merges the training and the test sets to create one data set.

# Reading subject training data set
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt", col.names=c("subject_id"))
# Setting an ID column in order to precisely identify each row 
subject_train$ID <- as.numeric(rownames(subject_train))

# Reading training data set
X_train = read.table("UCI HAR Dataset/train/X_train.txt")
# Setting an ID column in order to precisely identify each row 
X_train$ID <- as.numeric(rownames(X_train))
# Same operations for Y train data set.
y_train = read.table("UCI HAR Dataset/train/y_train.txt", col.names=c("activity_id"))  # max = 6
y_train$ID <- as.numeric(rownames(y_train))

# merge
train <- merge(subject_train, y_train, all=TRUE)
train <- merge(train, X_train, all=TRUE)


# Performing the same operations for test data set
subject_test = read.table("UCI HAR Dataset/test/subject_test.txt", col.names=c("subject_id"))
subject_test$ID <- as.numeric(rownames(subject_test))

X_test = read.table("UCI HAR Dataset/test/X_test.txt")
X_test$ID <- as.numeric(rownames(X_test))

y_test = read.table("UCI HAR Dataset/test/y_test.txt", col.names=c("activity_id"))  # max = 6
y_test$ID <- as.numeric(rownames(y_test))

test <- merge(subject_test, y_test, all=TRUE) 
test <- merge(test, X_test, all=TRUE) 

#Finally, combine train and test data sets.
data1 <- rbind(train, test)

##2. Extracts only the measurements on the mean and standard deviation for each measurement.

features = read.table("UCI HAR Dataset/features.txt", col.names=c("feature_id", "feature_label"),)
#Mean and standard deviation
selected_features <- features[grepl("mean\\(\\)", features$feature_label) | grepl("std\\(\\)", features$feature_label), ]
data2 <- data1[, c(c(1, 2, 3), selected_features$feature_id + 3) ]


##3. Uses descriptive activity names to name the activities in the data set.
activity_labels = read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activity_id", "activity_label"),) 
data3 = merge(data2, activity_labels)

##4. Appropriately labels the data set with descriptive activity names.
selected_features$feature_label = gsub("\\(\\)", "", selected_features$feature_label)
selected_features$feature_label = gsub("-", ".", selected_features$feature_label)
for (i in 1:length(selected_features$feature_label)) {
        colnames(data3)[i + 3] <- selected_features$feature_label[i]
}
data4 = data3

## 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
drops <- c("ID","activity_label")
data5 <- data4[,!(names(data4) %in% drops)]
aggdata <-aggregate(data5, by=list(subject = data5$subject_id, activity = data5$activity_id), FUN=mean, na.rm=TRUE)
drops <- c("subject","activity")
aggdata <- aggdata[,!(names(aggdata) %in% drops)]
aggdata = merge(aggdata, activity_labels)
write.table(file="submit.txt", x=aggdata)
