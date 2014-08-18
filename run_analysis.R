 
setwd("/Users/mengmeng/Documents/coursera/dataCleaning/project/UCI HAR Dataset")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/Y_test.txt")
sub_test <- read.table("test/subject_test.txt")
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/Y_train.txt")
sub_train<- read.table("train/subject_train.txt")
feature <- read.table("features.txt")

dim(x_test)
dim(y_test)
dim(sub_test)
dim(x_train)
dim(y_train)
dim(sub_train)
dim(feature)

#colnames(x_test) <- feature$V2

test1 <- cbind(x_test,y_test)
test <- cbind(test1,sub_test)

train1 <- cbind(x_train,y_train)
#colnames(train1) <- feature$V2
train <- cbind(train1,sub_train)

dim(test)
dim(train)
dataF <- rbind(test,train)
dim(dataF)
dataF[1,]

data <- dataF[,c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,241:242,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543,562:563)]
dim(data)
#colnames(data[,67]) <- "activity"
#rowAve <- rowMeans(data)

new_coding <- read.table("meanSdCoding.txt")
dim(new_coding)
new_coding$id <- c(1:68)
new_coding <- data.frame(new_coding$id,new_coding$V1,new_coding$V2)

colnames(new_coding) <- 








