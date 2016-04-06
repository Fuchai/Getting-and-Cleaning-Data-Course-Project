library(dplyr)
library(tidyr)

# read features
features<-fread("UCI HAR Dataset/features.txt",col.names = c("No.","Feature Name"))
activities<-fread("UCI HAR Dataset/activity_labels.txt")

# read test set
X_test<-fread("UCI HAR Dataset/test/X_test.txt",col.names=features$`Feature Name`)
Y_test<-fread("UCI HAR Dataset/test/y_test.txt")
subject_test<-fread("UCI HAR Dataset/test/subject_test.txt")

# select only mean and standard deviation
X_test<-select(X_test,matches('mean|std'))

# add subject and activity varaible to X_test
Y_test<-mutate(Y_test,activity=activities[Y_test$V1,V2])
X_test<-mutate(X_test,Subject=subject_test$V1,Activity=Y_test$activity)
# reorder
X_test<-setcolorder(X_test,c(87,88,1:86))

# repeat all those with training set
X_train<-fread("UCI HAR Dataset/train/X_train.txt",col.names = features$`Feature Name`)
Y_train<-fread("UCI HAR Dataset/train/y_train.txt")
subject_train<-fread("UCI HAR Dataset/train/subject_train.txt")
X_train<-select(X_train,matches('mean|std'))
Y_train<-mutate(Y_train,activity=activities[Y_train$V1,V2])
X_train<-mutate(X_train,Subject=subject_train$V1,Activity=Y_train$activity)
X_train<-setcolorder(X_train,c(87,88,1:86))

# row bind train and test
meanStd<-bind_rows(X_train,X_test)
# rearrange the rows with ascending subject number, then activity
meanStd<-arrange(meanStd,Subject,Activity)

# create average for every variable for each activity and each subject
meanByActSub<-meanStd[,c("Subject","Activity")]
# select unique rows
meanByActSub<-distinct(meanByActSub)
# change col names for convenience
originalnames<-colnames(meanStd)
len<-length(originalnames)
colnames(meanStd)<-paste("V",seq(1,len),sep = "")
# summarize each and revert the colnames
meanByActSub<-summarize_each(group_by(meanStd,V1,V2),funs(mean),V3:V88)
colnames(meanStd)<-originalnames
colnames(meanByActSub)<-originalnames

# wrap up
write.csv(meanStd,"cleaned.csv")
write.csv(meanByActSub,"summarized.csv")