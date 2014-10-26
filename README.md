GACD
====

# Getting And Cleaning Data Repo

## Repository for Human Activity Recognition[1] R script and tidy data set (analysis.txt)

**Codebook**

The script run_Analysis.R reads the features datasets, selects only those features that represent means and standard deviations and combines this with activity information and subject ids for both TEST and TRAINING data sets.  The columns are then labeled appropriately (see below).  The data in this resultant data set is then transformed using means to create a table ('analysis.txt') that contains the summarized data for each subject, activity and feature.  For more information about the collection of data and the types of features tracked, see the Sources section below.

**Data Dictionary**
The following fields appear in the data table
01  ID	                        Subject ID
02	ACTCD	                      Activity Code
03	ACTNM	                      Activity Name
04	SRC	                        'TRAIN'/'TEST'
05	tBodyAcc-mean()-X	
06	tBodyAcc-mean()-Y	
07	tBodyAcc-mean()-Z	
08	tBodyAcc-std()-X	
09	tBodyAcc-std()-Y	
10	tBodyAcc-std()-Z	
11	tGravityAcc-mean()-X	
12	tGravityAcc-mean()-Y	
13	tGravityAcc-mean()-Z	
14	tGravityAcc-std()-X	
15	tGravityAcc-std()-Y	
16	tGravityAcc-std()-Z	
17	tBodyAccJerk-mean()-X	
18	tBodyAccJerk-mean()-Y	
19	tBodyAccJerk-mean()-Z	
20	tBodyAccJerk-std()-X	
21	tBodyAccJerk-std()-Y	
22	tBodyAccJerk-std()-Z	
23	tBodyGyro-mean()-X	
24	tBodyGyro-mean()-Y	
25	tBodyGyro-mean()-Z	
26	tBodyGyro-std()-X	
27	tBodyGyro-std()-Y	
28	tBodyGyro-std()-Z	
29	tBodyGyroJerk-mean()-X	
30	tBodyGyroJerk-mean()-Y	
31	tBodyGyroJerk-mean()-Z	
32	tBodyGyroJerk-std()-X	
33	tBodyGyroJerk-std()-Y	
34	tBodyGyroJerk-std()-Z	
35	tBodyAccMag-mean()	
36	tBodyAccMag-std()	
37	tGravityAccMag-mean()	
38	tGravityAccMag-std()	
39	tBodyAccJerkMag-mean()	
40	tBodyAccJerkMag-std()	
41	tBodyGyroMag-mean()	
42	tBodyGyroMag-std()	
43	tBodyGyroJerkMag-mean()	
44	tBodyGyroJerkMag-std()	
45	fBodyAcc-mean()-X	
46	fBodyAcc-mean()-Y	
47	fBodyAcc-mean()-Z	
48	fBodyAcc-std()-X	
49	fBodyAcc-std()-Y	
50	fBodyAcc-std()-Z	
51	fBodyAcc-meanFreq()-X	
52	fBodyAcc-meanFreq()-Y	
53	fBodyAcc-meanFreq()-Z	
54	fBodyAccJerk-mean()-X	
55	fBodyAccJerk-mean()-Y	
56	fBodyAccJerk-mean()-Z	
57	fBodyAccJerk-std()-X	
58	fBodyAccJerk-std()-Y	
59	fBodyAccJerk-std()-Z	
60	fBodyAccJerk-meanFreq()-X	
61	fBodyAccJerk-meanFreq()-Y	
62	fBodyAccJerk-meanFreq()-Z	
63	fBodyGyro-mean()-X	
64	fBodyGyro-mean()-Y	
65	fBodyGyro-mean()-Z	
66	fBodyGyro-std()-X	
67	fBodyGyro-std()-Y	
68	fBodyGyro-std()-Z	
69	fBodyGyro-meanFreq()-X	
70	fBodyGyro-meanFreq()-Y	
71	fBodyGyro-meanFreq()-Z	
72	fBodyAccMag-mean()	
73	fBodyAccMag-std()	
74	fBodyAccMag-meanFreq()	
75	fBodyBodyAccJerkMag-mean()	
76	fBodyBodyAccJerkMag-std()	
77	fBodyBodyAccJerkMag-meanFreq()	
78	fBodyBodyGyroMag-mean()	
79	fBodyBodyGyroMag-std()	
80	fBodyBodyGyroMag-meanFreq()	
81	fBodyBodyGyroJerkMag-mean()	
82	fBodyBodyGyroJerkMag-std()	
83	fBodyBodyGyroJerkMag-meanFreq()	

**Citation:**
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

**Sources**
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy.
activityrecognition '@' smartlab.ws
www.smartlab.ws

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
