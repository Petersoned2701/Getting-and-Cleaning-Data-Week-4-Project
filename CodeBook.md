# tidy_data.txt Code Book

## Description
tidy_data.txt is a transformation of the original UCI HAR Dataset of activity measurements taken with the accelerometer and gyroscope of Samsung SII smartphones. Only the explicit mean and sd data was used. It was then sorted and averaged by Subject and Activity so that the data in the set represent the averages for Subject and Activity of the original mean and sd data. The data are described as follows:

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
* Sometimes followed by jerk, which is a jerk signal derived from linear acceleration and angular velocity, and/or Mag, which indicates that the measurement is a maginitude based on all three dimensional measurements.

### The third word:

* Acc: Accelerometer Measurement
* Gyro: Gyroscope Measurement

### The last letter pertains to the axis of measurement in three dimensional space (X, Y, Z).

Information on the technical details of the experiments and measurements, as well as a more detailed description are available in the original data set in the README.txt and features_info.txt. It can be found at the following URL:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Explicit list of column variables:
1  Subject  
2  Activity  
3  tMean_Bod_Acc_X  
4  tMean_Bod_Acc_Y  
5  tMean_Bod_Acc_Z  
6  tStd_Bod_Acc_X  
7  tStd_Bod_Acc_Y  
8  tStd_Bod_Acc_Z  
9  tMean_Grav_Acc_X  
10 tMean_Grav_Acc_Y  
11 tMean_Grav_Acc_Z  
12 tStd_Grav_Acc_X  
13 tStd_Grav_Acc_Y  
14 tStd_Grav_Acc_Z  
15 tMean_Bod_Acc_Jerk_X  
16 tMean_Bod_Acc_Jerk_Y  
17 tMean_Bod_Acc_Jerk_Z  
18 tStd_Bod_Acc_Jerk_X  
19 tStd_Bod_Acc_Jerk_Y  
20 tStd_Bod_Acc_Jerk_Z  
21 tMean_Bod_Gyro_X  
22 tMean_Bod_Gyro_Y  
23 tMean_Bod_Gyro_Z  
24 tStd_Bod_Gyro_X  
25 tStd_Bod_Gyro_Y   
26 tStd_Bod_Gyro_Z  
27 tMean_Bod_Gyro_Jerk_X  
28 tMean_Bod_Gyro_Jerk_Y  
29 tMean_Bod_Gyro_Jerk_Z  
30 tStd_Bod_Gyro_Jerk_X  
31 tStd_Bod_Gyro_Jerk_Y  
32 tStd_Bod_Gyro_Jerk_Z  
33 tMean_Bod_Acc_Mag   
34 tStd_Bod_Acc_Mag  
35 tMean_Bod_Acc_Jerk_Mag  
36 tStd_Bod_Acc_Jerk_Mag  
37 tMean_Bod_Gyro_Mag  
38 tStd_Bod_Gyro_Mag  
39 tMean_Bod_Gyro_Jerk_Mag  
40 tStd_Bod_Gyro_Jerk_Mag  
41 fMean_Bod_Acc_X   
42 fMean_Bod_Acc_Y  
43 fMean_Bod_Acc_Z  
44 fStd_Bod_Acc_X  
45 fStd_Bod_Acc_Y  
46 fStd_Bod_Acc_Z  
47 fMean_Bod_Acc_Jerk_X  
48 fMean_Bod_Acc_Jerk_Y  
49 fMean_Bod_Acc_Jerk_Z  
50 fStd_Bod_Acc_Jerk_X   
51 fStd_Bod_Acc_Jerk_Y  
52 fStd_Bod_Acc_Jerk_Z  
53 fMean_Bod_Gyro_X  
54 fMean_Bod_Gyro_Y  
55 fMean_Bod_Gyro_Z  
56 fStd_Bod_Gyro_X  
57 fStd_Bod_Gyro_Y  
58 fStd_Bod_Gyro_Z  
59 fMean_Bod_Acc_Mag   
60 fStd_Bod_Acc_Mag  
61 fMean_Bod_Acc_Jerk_Mag  
62 fStd_Bod_Acc_Jerk_Mag  
63 fMean_Bod_Gyro_Mag  
64 fStd_Bod_Gyro_Mag  
65 fMean_Bod_Gyro_Jerk_Mag  
66 fStd_Bod_Gyro_Jerk_Mag
