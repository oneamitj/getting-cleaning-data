setwd('gncDS')
# 128 columns
# Each 16 Char
# Except 1st 17 and 128th 15


# X
root_dir <- file.path("UCI HAR Dataset")
test_dir <- file.path(root_dir, "test")
train_dir <- file.path(root_dir, "train")

sub_test_data <- read.table(file.path(test_dir, "subject_test.txt" ))
sub_train_data <- read.table(file.path(train_dir, "subject_train.txt" ))
subject_data <- rbind(sub_test_data, sub_train_data)
colnames(subject_data) <- "subject"

activity_test_data <- read.table(file.path(test_dir, "y_test.txt" ))
activity_train_data <- read.table(file.path(train_dir, "y_train.txt" ))
activity_data <- rbind(activity_test_data, activity_train_data)
colnames(activity_data) <- "activity"

feature_test_data <- read.table(file.path(test_dir, "X_test.txt" ))
feature_train_data <- read.table(file.path(train_dir, "X_train.txt" ))
feature_data <- rbind(feature_test_data, feature_train_data)
feature_names <- read.table(file.path(root_dir, "features.txt" ))
colnames(feature_data) <- feature_names[,2]

# Extract only mean and standard deviation
required_feature_names <- feature_names[,2][grep("mean\\(\\)|std\\(\\)", feature_names[,2])]
required_feature_data <- feature_data[as.character(required_feature_names)]

# Combined data with Activity and Feature name
data <- cbind(subject_data, activity_data, required_feature_data)

# Use descriptive activity names to name the activities in the data set.
activity_labels <- read.table(file.path(root_dir, "activity_labels.txt"))
data$activity <- factor(data$activity, labels = as.character(activity_labels[,2]))

# Appropriately labels the data set with descriptive variable names.

# prefix `t` => time
# `Acc` => Accelerometer
# `Gyro` => Gyroscope
# prefix `f` => frequency
# `Mag` => Magnitude
# `BodyBody` => Body

names(data)<-gsub("^t", "time", names(data))
names(data)<-gsub("^f", "frequency", names(data))
names(data)<-gsub("Acc", "Accelerometer", names(data))
names(data)<-gsub("Gyro", "Gyroscope", names(data))
names(data)<-gsub("Mag", "Magnitude", names(data))
names(data)<-gsub("BodyBody", "Body", names(data))

# independent tidy data set with the average of each variable for each activity and each subject.
tidy_data <- aggregate(data[, 3:length(data)], by = list(data$subject, data$activity), FUN = mean)
names(tidy_data)[1:2] <- c('subject', 'activity')
write.csv(tidy_data, "tidy_data.csv", row.names = FALSE)
write.table(tidy_data, file = "tidy_data.txt", row.name=FALSE)
