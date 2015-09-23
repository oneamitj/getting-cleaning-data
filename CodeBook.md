# CodeBook

## Code variables

| name |              description |
|---:|:-----------------:|
| `*_dir` | Directory path |
| `subject_data` | Combined subject data |
| `activity_*` | Handle for activity data |
| `feature_*` | Handle for feature data |
| `required_feature_names` | List of feature column name we need |
| `required_feature_data` | List of feature column data we need |
| `data` | Combined data of subjectm activitym feature |
| `tidy_data` | Holds final clean data |

## Transformation

- rbind() merge multiple row of data from different variable
- cbind() merge multiple column of data from different variable
- `gsub()` Used to replace shortform with full names
- factor() Used to factorize int value of activity to its corresponding name

## Tidy Data dataset variables
### Subject

Each row identifies the subject who performed the activity for each window sample. Range: 1 - 30

### Activity

| id |              name |
|---:|:-----------------:|
|  1 |           WALKING|
|  2 |  WALKING_UPSTAIRS|
|  3 | WALKING_DOWNSTAIRS|
|  4|            SITTING|
|  5|           STANDING|
|  6|            LAYING|

### Features

| feature column name |
|:--------------------:|
| timeBodyAccelerometer-mean()-X |
| timeBodyAccelerometer-mean()-Y |
| timeBodyAccelerometer-mean()-Z |
| timeBodyAccelerometer-std()-X |
| timeBodyAccelerometer-std()-Y |
| timeBodyAccelerometer-std()-Z |
| timeGravityAccelerometer-mean()-X |
| timeGravityAccelerometer-mean()-Y |
| timeGravityAccelerometer-mean()-Z |
| timeGravityAccelerometer-std()-X |
| timeGravityAccelerometer-std()-Y |
| timeGravityAccelerometer-std()-Z |
| timeBodyAccelerometerJerk-mean()-X |
| timeBodyAccelerometerJerk-mean()-Y |
| timeBodyAccelerometerJerk-mean()-Z |
| timeBodyAccelerometerJerk-std()-X |
| timeBodyAccelerometerJerk-std()-Y |
| timeBodyAccelerometerJerk-std()-Z |
| timeBodyGyroscope-mean()-X |
| timeBodyGyroscope-mean()-Y |
| timeBodyGyroscope-mean()-Z |
| timeBodyGyroscope-std()-X |
| timeBodyGyroscope-std()-Y |
| timeBodyGyroscope-std()-Z |
| timeBodyGyroscopeJerk-mean()-X |
| timeBodyGyroscopeJerk-mean()-Y |
| timeBodyGyroscopeJerk-mean()-Z |
| timeBodyGyroscopeJerk-std()-X |
| timeBodyGyroscopeJerk-std()-Y |
| timeBodyGyroscopeJerk-std()-Z |
| timeBodyAccelerometerMagnitude-mean() |
| timeBodyAccelerometerMagnitude-std() |
| timeGravityAccelerometerMagnitude-mean() |
| timeGravityAccelerometerMagnitude-std() |
| timeBodyAccelerometerJerkMagnitude-mean() |
| timeBodyAccelerometerJerkMagnitude-std() |
| timeBodyGyroscopeMagnitude-mean() |
| timeBodyGyroscopeMagnitude-std() |
| timeBodyGyroscopeJerkMagnitude-mean() |
| timeBodyGyroscopeJerkMagnitude-std() |
| frequencyBodyAccelerometer-mean()-X |
| frequencyBodyAccelerometer-mean()-Y |
| frequencyBodyAccelerometer-mean()-Z |
| frequencyBodyAccelerometer-std()-X |
| frequencyBodyAccelerometer-std()-Y |
| frequencyBodyAccelerometer-std()-Z |
| frequencyBodyAccelerometerJerk-mean()-X |
| frequencyBodyAccelerometerJerk-mean()-Y |
| frequencyBodyAccelerometerJerk-mean()-Z |
| frequencyBodyAccelerometerJerk-std()-X |
| frequencyBodyAccelerometerJerk-std()-Y |
| frequencyBodyAccelerometerJerk-std()-Z |
| frequencyBodyGyroscope-mean()-X |
| frequencyBodyGyroscope-mean()-Y |
| frequencyBodyGyroscope-mean()-Z |
| frequencyBodyGyroscope-std()-X |
| frequencyBodyGyroscope-std()-Y |
| frequencyBodyGyroscope-std()-Z |
| frequencyBodyAccelerometerMagnitude-mean() |
| frequencyBodyAccelerometerMagnitude-std() |
| frequencyBodyAccelerometerJerkMagnitude-mean() |
| frequencyBodyAccelerometerJerkMagnitude-std() |
| frequencyBodyGyroscopeMagnitude-mean() |
| frequencyBodyGyroscopeMagnitude-std() |
| frequencyBodyGyroscopeJerkMagnitude-mean() |
| frequencyBodyGyroscopeJerkMagnitude-std() |