# Analysis Overview
The rating given by consumers to a restaurant is dependent on several different criteria. Some of these criteria may directly influence whether a restaurant will obtain an award, including a Michelin star award. Some few of these criteria include, but not limited to, menu/cuisine, restaurant type, online ordering, table reservation, approximate cost for two people, and the type of service and service level.
Applying concepts of machine learning specifically supervised machine, the aim of this project is to predict whether a restaurant will obtain a Michelin award. The supervised machine learning algorithm will use numerical and categorical features from a dataset to understand the effect of every feature on the rating of the restaurants, then train and test the model to predict the rating of the restaurants.  
The solution to the problem statement consists of data preprocessing and exploratory data analysis (EDA), feature selection, model building, and predicting the rating of a restaurant. 

### Data Preprocessing and Exploratory Data Analysis 
Data preprocessing and EDA was carried out in unison to clean and filter the dataset and to understand the dataset better using visualizations.

Data preprocessing was used to resolve issues like null values, inconsistencies in the data and irrelevant columns. Categorical data was converted to numerical data. To solve the problem of missing values, the following steps were followed:  
* Some columns containing a large number of null values were dropped
* Some rows containing null values were removed.
* The ‘awards’ column had a moderate amount of ‘Nan’. These rows however was assigned the numeric value zero, since it was assumed that this implies the restaurant did not receive any award
* Filtering the dataset to include specific regions
* Unnecessary columns were removed

Some of the visualizations used to understand and refine the dataset include:

* Heatmaps - to visualize the number of null values for the different columns in the data set.  

* Bar charts - This visualization is informative in terms of whether there the data is disproportionate and hence whether the variable may influence the outcome.

### Feature engineering and selection

Some features were easily mined since they were already numerical and in a proper format. However, some features had to be converted to numerical format. At the beginning there were 47 variables(columns). This was eventually trimmed to 6 variables including the target variable.

The scope of this project falls under a classification type machine learning model since the aim is to predict a discrete outcome. Independent variables (features) were picked based on standardization and “michelin” was the target variable, since the aim of the project was to determine if a restaurant would be rewarded with a 'michelin' star.

For the given dataset, there was two unexpected complications, the target variable was signifanctly unbalanced (the approach to solve this is subsequently discussed) and the feature 'total_reviews_count' was significanlty skewed with outliers as shown in the figure below. For the latter, the apporach to compensate for the heavily skewed data took place in 2 steps:

* First the outliers within 2 standard deviation of the mean was removed. This was achieved by calculating quartiles, interquartile range and upper and lower boundaries. Data outside the upper boundary was susbequently trimmed. 

* Secondly, since there was still a lot of unique values, these values were placed in a bin. After binning, the data was then checked and converted as necessary to ensure it was ready for analysis.

### Model Building

The aim of this project was to determine whether a restaurant will be rated with a Michelin award (1-yes  or 0-No). The classification model's algorithms would attempt to learn patterns from the data, and if the model is successful, gain the ability to make accurate predictions for new restaurants. 

The dataset was encoded using OneHotEncoder where applicable. Using this encoded data, various machine learning algorithms was used to find the best fitting model (subsequetly discussed). The dataset was divided into 70% training data and 30% testing data. Here, the target variable was stratified to ensure that all the data belong to one category does not end up in either the training or testing dataset. The data was standardize to ensure no feature would have a greater effect on the model than the other. Since the data was significantly unbalanced, Random Oversampling was used to create a balanced dataset.

Since different models were implemented on the same dataset, a function was used created to employ the different models and the same metric was used to test the different modles. The various classification models used to analyze the dataset include:

* Logistic regression - is a binary classifier which can categorize samples into one of two categories. A logistic regression model evaluates the probability of  of event success and event failure.  Two major advantages for logistictic regression is that it generally obtains good accuracy for many simple data sets and it performs well when the dataset is linearly separable, and it not only provides a measure of how appropriate a predictor is, but also its direction of association (positive or negative). The major limitation of Logistic Regression is the assumption of linearity between the dependent variable and the independent variables. Linearly separable data is rarely found in real-world scenarios.
* Gradient Boosted Tree - Gradient boosting models are powerful algorithms which can be used for classification tasks and can perform incredibly well on very complex datasets. They are also easy to implement in Scikit-Learn. However, they are also prone to overfitting. Usually this can be avoided by tuning the parameter.
* Support Vector Machines -  they can do linear classification, but can use other non-linear basis functions. Very effective in high dimensional spaces
and works really well with a clear margin of separation. It is also memory efficient. However, SVM also doesn’t perform very well when the data set has more noise i.e. target classes are overlapping, and it doesn’t directly provide probability estimates.
* Decision Trees - are not limited to linear data, but can easily capture Non-linear patterns. One of the major advantages of decision trees is that 
makes has no assumptions about distribution because of the non-parametric nature of the algorithm.  On the other hand, decision trees can be prone to overfiting and can be biased with imbalance dataset. The latter can then be compensated by balancing out the dataset before creating the decision tree.

The metrics used to evaluate/compare the models’ accuracy were:
* the accuracy score 
* precision, recall and f1 score
* the mean square error 
* the root mean square error 
