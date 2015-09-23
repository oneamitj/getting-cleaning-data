Getting and Cleaning Data Course Project
----------------------------------------

# download_data.R

This will download the corpus and extract it in directory named `UCI HAR Dataset`, if corpus in Not already downloaded.

Download data using:

```
source('download_data.R')
```

# run_analysis.R

This is main R script that cleans the corpus data.

Task performed:

- Merge train and test data.
- Extract data for mean and standard deviation of each measurement.
- Provides appropriate descriptive names to each activity.
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### How to use run_analysis.R

Make sure corpus data is downloaded and is in directory `UCI HAR Dataset`, which is in current working directory.

Now execute this:

```
source('run_analysis.R')
```

After the completion of execution two new files will be created:

- `tidy_data.txt` It contains clean data in raw format.
- `tidy_data.csv` It contains clean data in csv format.