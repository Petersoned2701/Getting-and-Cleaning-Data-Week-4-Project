# Analysis script for Getting and Cleaning Data
# Week 4 Class Project. Assumes files are in the
# R working directory when run. Using dplyr, plyr, tidyr
library(dplyr)
library(plyr)

# Read in the test data first. Go ahead and label "Subject"
subject_test <- read.delim("subject_test.txt", sep = "\n", header = FALSE)
colnames(subject_test) <- "Subject"

# Read in X_test, should be the same number of observations as subject_test
# with 561 variables. Read.table works well with this file.
X_test <- read.table("X_test.txt", header = FALSE)

# Read in y_test, label it "Activity"
y_test <- read.delim("y_test.txt", sep = "\n", header = FALSE)
colnames(y_test) <- "Activity"

# Bind them all into a new data frame, ensure Subject and Activity are side by side.
test_data <- data.frame(subject_test, y_test, X_test)

# Remove the component data frames from memory as we don't need them anymore
rm(subject_test)
rm(X_test)
rm(y_test)

# Read in the training data next.
subject_train <- read.delim("subject_train.txt", sep = "\n", header = FALSE)
colnames(subject_train) <- "Subject"

# Read in X_train, should be the same number of observations as subject_test
# with 561 variables. Read.table works well with this file.
X_train <- read.table("X_train.txt", header = FALSE)

# Read in y_train, label it "Activity"
y_train <- read.delim("y_train.txt", sep = "\n", header = FALSE)
colnames(y_train) <- "Activity"

# Bind them all into a new data frame, ensure Subject and Activity are side by side.
train_data <- data.frame(subject_train, y_train, X_train)

# Remove component data frames from memory
rm(subject_train)
rm(X_train)
rm(y_train)

# Row bind our data sets so we have one data set.
full_data <- rbind(train_data, test_data)

# Remove the component data frames from memory
rm(test_data)
rm(train_data)

# Convert Subject and Activity to Factors
full_data$Subject <- as.factor(as.character(full_data$Subject))
full_data$Activity <- as.factor(as.character(full_data$Activity))

# Rename the activity factors to be descriptive.
levels(full_data$Activity) <- c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying")

# Create a new data frame with only the mean and std variables
meanst_data <- full_data[ , c(1:8, 43:48, 83:88, 123:128, 163:168, 203, 204, 229, 230, 242, 243, 256, 257, 268:273, 347:352, 
                              426:431, 505, 506, 518, 519, 531, 532, 544, 545)]

# Apply Descriptive Column Names
names(meanst_data) <- c("Subject", "Activity", "tMean_Bod_Acc_X", "tMean_Bod_Acc_Y", "tMean_Bod_Acc_Z", "tStd_Bod_Acc_X",
                        "tStd_Bod_Acc_Y",  "tStd_Bod_Acc_Z", "tMean_Grav_Acc_X", "tMean_Grav_Acc_Y", "tMean_Grav_Acc_Z", 
                        "tStd_Grav_Acc_X", "tStd_Grav_Acc_Y","tStd_Grav_Acc_Z", "tMean_Bod_Acc_Jerk_X", "tMean_Bod_Acc_Jerk_Y", 
                        "tMean_Bod_Acc_Jerk_Z", "tStd_Bod_Acc_Jerk_X", "tStd_Bod_Acc_Jerk_Y", "tStd_Bod_Acc_Jerk_Z", 
                        "tMean_Bod_Gyro_X", "tMean_Bod_Gyro_Y", "tMean_Bod_Gyro_Z", "tStd_Bod_Gyro_X", "tStd_Bod_Gyro_Y",  
                        "tStd_Bod_Gyro_Z", "tMean_Bod_Gyro_Jerk_X", "tMean_Bod_Gyro_Jerk_Y", "tMean_Bod_Gyro_Jerk_Z", 
                        "tStd_Bod_Gyro_Jerk_X", "tStd_Bod_Gyro_Jerk_Y", "tStd_Bod_Gyro_Jerk_Z", "tMean_Bod_Acc_Mag", 
                        "tStd_Bod_Acc_Mag", "tMean_Bod_Acc_Jerk_Mag", "tStd_Bod_Acc_Jerk_Mag", "tMean_Bod_Gyro_Mag", 
                        "tStd_Bod_Gyro_Mag", "tMean_Bod_Gyro_Jerk_Mag", "tStd_Bod_Gyro_Jerk_Mag", "fMean_Bod_Acc_X", 
                        "fMean_Bod_Acc_Y", "fMean_Bod_Acc_Z", "fStd_Bod_Acc_X","fStd_Bod_Acc_Y",  "fStd_Bod_Acc_Z", 
                        "fMean_Bod_Acc_Jerk_X", "fMean_Bod_Acc_Jerk_Y", "fMean_Bod_Acc_Jerk_Z", "fStd_Bod_Acc_Jerk_X", 
                        "fStd_Bod_Acc_Jerk_Y", "fStd_Bod_Acc_Jerk_Z", "fMean_Bod_Gyro_X", "fMean_Bod_Gyro_Y", 
                        "fMean_Bod_Gyro_Z", "fStd_Bod_Gyro_X", "fStd_Bod_Gyro_Y",  "fStd_Bod_Gyro_Z", "fMean_Bod_Acc_Mag", 
                        "fStd_Bod_Acc_Mag", "fMean_Bod_Acc_Jerk_Mag", "fStd_Bod_Acc_Jerk_Mag", "fMean_Bod_Gyro_Mag", 
                        "fStd_Bod_Gyro_Mag", "fMean_Bod_Gyro_Jerk_Mag", "fStd_Bod_Gyro_Jerk_Mag")

# Remove full_data from workspace
rm(full_data)

# Use dplyr group by to select Subject and then Activity
meanst_data <- group_by(meanst_data, Subject, Activity)

# Use summarize each to find the means of Subject(Activity)
data <- summarize_each(meanst_data, funs(mean))

# Convert factors to numeric and then arrange so the
# table starts at subject 1 and ends at subject 30
data$Subject <- as.numeric(as.character(data$Subject))
data <- arrange(data, Subject)

# Write data to file
write.table(data, file = "tidy_avg.txt", row.names = FALSE)

# Remove data from workspace
rm(data)
rm(meanst_data)