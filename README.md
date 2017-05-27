# Getting-and-Cleaning-Data-Week-4-Project

Description of run_analysis.R
Uses the following packages:
dplyr
plyr

* Data frames are periodically removed from the workspace when they are no longer needed.

* The script is set up as a copypaste or select and run script rather than being wrapped in a funcion. It reads in the ancillary data (train, test, X_train, X_test, y_train, y_test) and lables the test and train data as "Subject" and y data as "Activity". The data is bound together by columns in the following order train/test, y, X, so that the columns read Subject, Activity, data.

* Test and train form their own data frames which are then bound together by rows to form full_data. Subject and Activity are converted into factors and the factor_levels of Activity are renamed according to the Activities.txt file provided with the data. 

* The mean and sd data are then selected out according to the features file included with the data and stored in a new frame meanst_data. The file is then used to rename the appropriate columns by what mean/sd measurements they represent. Those are described in the code book.

* The data are then grouped by Subject and Activity and a new, tidy frame is created by using the dplyr function summarize_each to calculate the averages of the other data.

* Subject is converted to numeric and arranged so that it runs from subject 1 to subject 30.

* The new, tidy, data frame is then saved as a table and the data is removed from the workspace.

* The frame can be read back in easily, data <- read.table("tidy_avg.txt")
