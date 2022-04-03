# Analysis Overview
The rating given by consumers to a restaurant is dependent on several different criteria. Some of these criteria may directly influence whether a restaurant will obtain an award, including a Michelin star award. Some few of these criteria include, but not limited to, menu/cuisine, restaurant type, online ordering, table reservation, approximate cost for two people, and the type of service and service level.
Applying concepts of machine learning specifically supervised machine, the aim of this project is to predict whether a restaurant will obtain a Michelin award. The supervised machine learning algorithm will use numerical and categorical features from a dataset to understand the effect of every feature on the rating of the restaurants, then train and test the model to predict the rating of the restaurants.  
The solution to the problem statement consists of data preprocessing and exploratory data analysis (EDA), feature selection, model building, and predicting the rating of a restaurant. 

#### Data Preprocessing and Exploratory Data Analysis 
Data preprocessing and EDA was carried out in unison to clean and filter the dataset and to understand the dataset better using visualizations.

Data preprocessing was used to resolve issues like null values, inconsistencies in the data and irrelevant columns. Categorical data was converted to numerical data. To solve the problem of missing values, the following steps were followed:  
* Some columns containing a large number of null values were dropped
* Some rows containing null values were removed.
* The ‘awards’ column had a small to moderate amount of ‘Nan’. These rows however was assigned the numeric value zero, since it was assumed that this implies the restaurant did not receive any award
* Filtering the dataset to include specific regions

Some of the visualizations used to understand and refine the dataset include:
* Heatmaps - to visualize the number of null values for the different columns in the data set.  the carried out in unison to clean and filter the dataset and to understand the dataset better using visualizations.
* Bar charts - to check the number of restaurants that vegetarian friendly and gluten free. This visualization is informative in terms of whether there the data is disproportionate and hence whether the variable may influence the outcome.

#### Feature engineering and selection
Some features were easily mined since they were already numerical and in a proper format. However, some features had to be converted to numerical format. At the beginning there were 47 variables(columns). This was eventually trimmed to 7 variables including the target variable. 
This scope of this project falls under a classification type machine learning model since the aim is to predict a discrete outcome. Independent variables (features) were picked based on standardization and “award” was the target variable.

#### Model Building
The aim of this project was to determine whether a restaurant will be rated with a Michelin award (1-yes  or 0-No). The classification model's algorithms would attempt to learn patterns from the data, and if the model is successful, gain the ability to make accurate predictions for new restaurants. The dataset was divided into 70% training data and 30% testing data. The dataset was encoded using label encoding. Using this encoded data, various machine learning algorithms was used to find the best fitting model. The various regression algorithms used to build the model were 

* Logistic regression
* Gradient Boosted Tree - Gradient boosting models are powerful algorithms which can be used for classification tasks and can perform incredibly well on very complex datasets. They are also easy to implement in Scikit-Learn. However, they are also prone to overfitting, which can be 
* Easy Ensemble AdaBoost Classifier

The metrics used to evaluate/compare the models’ accuracy were:
* the accuracy score - used to validate the model. That is, how well does the model predict the outcome
* the mean square error (MSE),
* the mean absolute error 
* the root mean square error 
