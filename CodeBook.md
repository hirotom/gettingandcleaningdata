Code Book
=========

Definition of input/output variables for run_analysis.R


# Inputs

Following files from the data source zip file for this project are required to be placed in the working directory to execute run_analysis.R script in R.
* features.txt
* activity_labels.txt
* X_test.txt
* Y_test.txt
* subject_test.txt
* X_train.txt
* Y_train.txt
* subject_train.txt

The descriptions (code book) for above input files are also in the data source (see README.txt in the data source zip file ).

# Output

This script (run_analysis.R) will output a file named "tidydata_out.txt" in the working directory.

The output data contains average values grouped by activity name (col. 1) and subject id (col. 2) for each measurement values (cols. 3 to 68). 

### Descriptions of columns in "tidydata_out.txt"

1. activity_name: Possible activities are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.

2. subject_id: Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
3. tBodyAcc-mean()-X: mean of normalized (bound between [-1,1]) data from tBodyAcc, X-axis
4. tBodyAcc-mean()-Y: mean of normalized (bound between [-1,1]) data from tBodyAcc, Y-axis
5. tBodyAcc-mean()-Z: mean of normalized (bound between [-1,1]) data from tBodyAcc, Z-axis
6. tBodyAcc-std()-X: standard deviation of normalized (bound between [-1,1]) data from tBodyAcc, X-axis
7. tBodyAcc-std()-Y: standard deviation of normalized (bound between [-1,1]) data from tBodyAcc, Y-axis
8. tBodyAcc-std()-Z: standard deviation of normalized (bound between [-1,1]) data from tBodyAcc, Z-axis
9. tGravityAcc-mean()-X: mean of normalized (bound between [-1,1]) data from tGravityAcc, X-axis
10. tGravityAcc-mean()-Y: mean of normalized (bound between [-1,1]) data from tGravityAcc, Y-axis
11. tGravityAcc-mean()-Z: mean of normalized (bound between [-1,1]) data from tGravityAcc, Z-axis
12. tGravityAcc-std()-X: standard deviation of normalized (bound between [-1,1]) data from tGravityAcc, X-axis
13. tGravityAcc-std()-Y: standard deviation of normalized (bound between [-1,1]) data from tGravityAcc, Y-axis
14. tGravityAcc-std()-Z: standard deviation of normalized (bound between [-1,1]) data from tGravityAcc, Z-axis
15. tBodyAccJerk-mean()-X: mean of normalized (bound between [-1,1]) data from tBodyAccJerk, X-axis
16. tBodyAccJerk-mean()-Y: mean of normalized (bound between [-1,1]) data from tBodyAccJerk, Y-axis
17. tBodyAccJerk-mean()-Z: mean of normalized (bound between [-1,1]) data from tBodyAccJerk, Z-axis
18. tBodyAccJerk-std()-X: standard deviation of normalized (bound between [-1,1]) data from tBodyAccJerk, X-axis
19. tBodyAccJerk-std()-Y: standard deviation of normalized (bound between [-1,1]) data from tBodyAccJerk, Y-axis
20. tBodyAccJerk-std()-Z: standard deviation of normalized (bound between [-1,1]) data from tBodyAccJerk, Z-axis
21. tBodyGyro-mean()-X: mean of normalized (bound between [-1,1]) data from tBodyGyro, X-axis
22. tBodyGyro-mean()-Y: mean of normalized (bound between [-1,1]) data from tBodyGyro, Y-axis
23. tBodyGyro-mean()-Z: mean of normalized (bound between [-1,1]) data from tBodyGyro, Z-axis
24. tBodyGyro-std()-X: standard deviation of normalized (bound between [-1,1]) data from tBodyGyro, X-axis
25. tBodyGyro-std()-Y: standard deviation of normalized (bound between [-1,1]) data from tBodyGyro, Y-axis
26. tBodyGyro-std()-Z: standard deviation of normalized (bound between [-1,1]) data from tBodyGyro, Z-axis
27. tBodyGyroJerk-mean()-X: mean of normalized (bound between [-1,1]) data from tBodyGyroJerk, X-axis
28. tBodyGyroJerk-mean()-Y: mean of normalized (bound between [-1,1]) data from tBodyGyroJerk, Y-axis
29. tBodyGyroJerk-mean()-Z: mean of normalized (bound between [-1,1]) data from tBodyGyroJerk, Z-axis
30. tBodyGyroJerk-std()-X: standard deviation of normalized (bound between [-1,1]) data from tBodyGyro, X-axis
31. tBodyGyroJerk-std()-Y: standard deviation of normalized (bound between [-1,1]) data from tBodyGyro, Y-axis
32. tBodyGyroJerk-std()-Z: standard deviation of normalized (bound between [-1,1]) data from tBodyGyro, Z-axis
33. tBodyAccMag-mean(): mean of normalized (bound between [-1,1]) data from tBodyAccMag
34. tBodyAccMag-std(): standard deviation of normalized (bound between [-1,1]) data from tBodyAccMag
35. tGravityAccMag-mean(): mean of normalized (bound between [-1,1]) data from tGravityAccMag
36. tGravityAccMag-std(): standard deviation of normalized (bound between [-1,1]) data from tGravityAccMag
37. tBodyAccJerkMag-mean(): mean of normalized (bound between [-1,1]) data from tBodyAccJerkMag
38. tBodyAccJerkMag-std(): standard deviation of normalized (bound between [-1,1]) data from tBodyAccJerkMag
39. tBodyGyroMag-mean(): mean of normalized (bound between [-1,1]) data from tBodyGyroMag
40. tBodyGyroMag-std(): standard deviation of normalized (bound between [-1,1]) data from tBodyGyroMag
41. tBodyGyroJerkMag-mean(): mean of normalized (bound between [-1,1]) data from tBodyGyroJerkMag
42. tBodyGyroJerkMag-std(): standard deviation of normalized (bound between [-1,1]) data from tBodyGyroJerkMag
43. fBodyAcc-mean()-X: mean of normalized (bound between [-1,1]) data from fBodyAcc, X-axis
44. fBodyAcc-mean()-Y: mean of normalized (bound between [-1,1]) data from fBodyAcc, Y-axis
45. fBodyAcc-mean()-Z: mean of normalized (bound between [-1,1]) data from fBodyAcc, Z-axis
46. fBodyAcc-std()-X: standard deviation of normalized (bound between [-1,1]) data from fBodyAcc, X-axis
47. fBodyAcc-std()-Y: standard deviation of normalized (bound between [-1,1]) data from fBodyAcc, Y-axis
48. fBodyAcc-std()-Z: standard deviation of normalized (bound between [-1,1]) data from fBodyAcc, Z-axis
49. fBodyAccJerk-mean()-X: mean of normalized (bound between [-1,1]) data from fBodyAccJerk, X-axis
50. fBodyAccJerk-mean()-Y: mean of normalized (bound between [-1,1]) data from fBodyAccJerk, Y-axis
51. fBodyAccJerk-mean()-Z: mean of normalized (bound between [-1,1]) data from fBodyAccJerk, Z-axis
52. fBodyAccJerk-std()-X: standard deviation of normalized (bound between [-1,1]) data from fBodyAccJerk, X-axis
53. fBodyAccJerk-std()-Y: standard deviation of normalized (bound between [-1,1]) data from fBodyAccJerk, Y-axis
54. fBodyAccJerk-std()-Z: standard deviation of normalized (bound between [-1,1]) data from fBodyAccJerk, Z-axis
55. fBodyGyro-mean()-X: mean of normalized (bound between [-1,1]) data from fBodyGyro, X-axis
56. fBodyGyro-mean()-Y: mean of normalized (bound between [-1,1]) data from fBodyGyro, Y-axis
57. fBodyGyro-mean()-Z: mean of normalized (bound between [-1,1]) data from fBodyGyro, Z-axis
58. fBodyGyro-std()-X: standard deviation of normalized (bound between [-1,1]) data from fBodyGyro, X-axis
59. fBodyGyro-std()-Y: standard deviation of normalized (bound between [-1,1]) data from fBodyGyro, Y-axis
60. fBodyGyro-std()-Z: standard deviation of normalized (bound between [-1,1]) data from fBodyGyro, Z-axis
61. fBodyAccMag-mean(): mean of normalized (bound between [-1,1]) data from fBodyAccMag
62. fBodyAccMag-std(): standard deviation of normalized (bound between [-1,1]) data from fBodyAccMag
63. fBodyBodyAccJerkMag-mean(): mean of normalized (bound between [-1,1]) data from fBodyBodyAccJerkMag
64. fBodyBodyAccJerkMag-std(): standard deviation of normalized (bound between [-1,1]) data from fBodyBodyAccJerkMag
65. fBodyBodyGyroMag-mean(): mean of normalized (bound between [-1,1]) data from fBodyBodyGyroMag
66. fBodyBodyGyroMag-std(): standard deviation of normalized (bound between [-1,1]) data from fBodyBodyGyroMag
67. fBodyBodyGyroJerkMag-mean(): mean of normalized (bound between [-1,1]) data from fBodyBodyGyroJerkMag
68. fBodyBodyGyroJerkMag-std(): standard deviation of normalized (bound between [-1,1]) data from fBodyBodyGyroJerkMag
