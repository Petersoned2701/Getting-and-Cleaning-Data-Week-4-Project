# tidy_data.txt Code Book

## Description
tidy_data.txt is a transformation of the original UCI HAR Dataset. Only the explicit mean and sd data was used. It was then sorted and averaged by Subject and Activity so that the data in the set represent the averages for Subject and Activity of the original mean and sd data. The data are described as follows:

### The first two columns are Subject Number and Activity Type, respectively.

## Variable Data (Columns 3 through 66)

### The first letter of each name:

* t: Time Domain
* f: Frequency Domain

### The first word:

* Mean: Mean of measurement
* SD: Standard deviation of measurement

### The second word:

* Body: Pertaining to the body
* Gravity: Pertaining to gravity
* Sometimes followed by jerk, which is a sudden movement as opposed to a sustained movement, and/or Mag, which indicates that the measurement is a maginitude.

### The third word:

* Acc: Accelerometer Measurement
* Gyro: Gyroscope Measurement

### The last letter pertains to the axis of measurement in three dimensional space (X, Y, Z).

Information on the technical details of the experiments and measurements, as well as a more detailed description are available in the original data set in the README.txt and features_info.txt. It can be found at the following URL:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


