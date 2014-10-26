# Programming Assignment
# Load, Parse and Transform Human Activity Recognition Data
# Create summaries of means and standard deviations to a file named 'analysis.txt'
#
setwd("~/Documents/Classes/GettingAndCleaningData")

# use data.table functionality
library(data.table)

# Get Data
#
# Training Data
#

# load list of endpoints (features)
features <- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
# load crosswalk of activities
actlbls <- read.table("./UCI HAR Dataset/activity_labels.txt")

# selectv vector for means and standard deviations
fsel <- grepl("mean",features$V2) | grepl("std",features$V2)

# Training Data
# load subject id numbers (one per row)
ids <- read.table("./UCI HAR Dataset/train/subject_train.txt")
# load activity codes (one per row)
act <- read.table("./UCI HAR Dataset/train/y_train.txt")
# create crosswalk between activity labels and activity codes
actn <- merge(act,actlbls,by="V1")

# read raw training data (one observation per row: multiple rows per subject)
train <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE,stringsAsFactors=FALSE)

# combine subject ids, activities and feature
train.df <- cbind(ids,actn,train[,fsel])
# assign column/field names to data set
names(train.df) <- c("ID","ACTCD","ACTNM",features$V2[fsel])
# create column indicating source of data (TRAIN/TEST)
train.df$SRC <- "TRAIN"

# Test Data
# load subject id numbers (one per row)
ids <- read.table("./UCI HAR Dataset/test/subject_test.txt")
# load activity codes (one per row)
act <- read.table("./UCI HAR Dataset/test/y_test.txt")
# create crosswalk between activity labels and activity codes
actn <- merge(act,actlbls,by="V1")

# read raw test data (one observation per row: multiple rows per subject)
test <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE,stringsAsFactors=FALSE)

# combine subject ids, activities and feature
test.df <- cbind(ids,actn,test[,fsel])
# assign column/field names to data set
names(test.df) <- c("ID","ACTCD","ACTNM",features$V2[fsel])
# create column indicating source of data (TRAIN/TEST)
test.df$SRC <- "TEST"

# Combine Training and Test data
cmb.dt <- data.table(rbind(train.df,test.df))
row.names(cmb.dt) <- 1:nrow(cmb.dt)

# Transform data
# Summaries by Subject ID, Activity and Endpoints using data.table functionality
sum.dt <- cmb.dt[,lapply(.SD,mean),by=c("ID","ACTCD","ACTNM","SRC")]

# Write out summary table to file
write.table(sum.dt,file="analysis.txt",row.name=FALSE)

# Done
