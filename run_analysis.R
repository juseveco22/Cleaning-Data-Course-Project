library(dplyr)

path <- file.path("./Getting and Cleaning data/UCI HAR Dataset")

## Read files

X_test <- read.table(file.path(path, "test", "X_test.txt"), header = FALSE)
X_train <- read.table(file.path(path, "train", "X_train.txt"), header = FALSE)

y_test <- read.table(file.path(path, "test", "y_test.txt"), header = FALSE)
y_train <- read.table(file.path(path, "train", "y_train.txt"), header = FALSE)

sub_test <- read.table(file.path(path, "test", "subject_test.txt"), header = FALSE)
sub_train <- read.table(file.path(path, "train", "subject_train.txt"), header = FALSE)

y <- rbind(y_test, y_train)
X <- rbind(X_test, X_train)
subject <- rbind(sub_test, sub_train)

## Merge data

data <- cbind(subject, y, X)



