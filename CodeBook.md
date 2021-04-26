# Data collection

Download the data from the link that is given: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
unzip the data and add it to your working environment.


# Load the data

With the command read.table() we load the data from our working environment

# Names on the data and merging of the data
The program binds the txt files loaded before and gives them a name with the names() command

y <- rbind(y_test, y_train)
names(y) <- "Act"

X <- rbind(X_test, X_train)
names(X) <- namesf

subject <- rbind(sub_test, sub_train)
names(subject) <- "Sub"

To merge the already merge data, we use the cbind command
data <- cbind(subject, y, X)


We then extract the values of mean and sd from the data and place it in a new set of data
This data is then pile up in a new dataset and then print it 