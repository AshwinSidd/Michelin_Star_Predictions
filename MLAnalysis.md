# Analysis Overview
The rating given by consumers to a restaurant is dependent on several different criteria. Some of these criteria may directly influence whether a restaurant will obtain an award, including a Michelin star award. Some few of these criteria include, but not limited to, menu/cuisine, restaurant type, online ordering, table reservation, approximate cost for two people, and the type of service and service level.
Applying concepts of machine learning specifically supervised machine, the aim of this project is to predict whether a restaurant will obtain a Michelin award. The supervised machine learning algorithm will use numerical and categorical features from a dataset to understand the effect of every feature on the rating of the restaurants, then train and test the model to predict the rating of the restaurants.  
The solution to the problem statement consists of data preprocessing and exploratory data analysis (EDA), feature selection, model building, and predicting the rating of a restaurant. 

### Data Preprocessing and Exploratory Data Analysis 
Data preprocessing and EDA was carried out in unison to clean and filter the dataset and to understand the dataset better using visualizations.

Data preprocessing was used to resolve issues like null values, inconsistencies in the data and irrelevant columns. Categorical data was converted to numerical data. To solve the problem of missing values, the following steps were followed:  
* Some columns containing a large number of null values were dropped
* Some rows containing null values were removed.
* The ‘awards’ column had a small to moderate amount of ‘Nan’. These rows however was assigned the numeric value zero, since it was assumed that this implies the restaurant did not receive any award
* Filtering the dataset to include specific regions

Some of the visualizations used to understand and refine the dataset include:
* Heatmaps - to visualize the number of null values for the different columns in the data set.  the carried out in unison to clean and filter the dataset and to understand the dataset better using visualizations.
* Bar charts - to check the number of restaurants that vegetarian friendly and gluten free. This visualization is informative in terms of whether there the data is disproportionate and hence whether the variable may influence the outcome.

### Feature engineering and selection
Some features were easily mined since they were already numerical and in a proper format. However, some features had to be converted to numerical format. At the beginning there were 47 variables(columns). This was eventually trimmed to 7 variables including the target variable. 
This scope of this project falls under a classification type machine learning model since the aim is to predict a discrete outcome. Independent variables (features) were picked based on standardization and “award” was the target variable.

### Model Building
The aim of this project was to determine whether a restaurant will be rated with a Michelin award (1-yes  or 0-No). The classification model's algorithms would attempt to learn patterns from the data, and if the model is successful, gain the ability to make accurate predictions for new restaurants. The dataset was divided into 70% training data and 30% testing data. The dataset was encoded using label encoding. Using this encoded data, various machine learning algorithms was used to find the best fitting model. The various regression algorithms used to build the model were 

* Logistic regression - is a binary classifier which can categorize samples into one of two categories. A logistic regression model evaluates the probability of  of event success and event failure.  Two major advantages for logistictic regression is that it generally obtains good accuracy for many simple data sets and it performs well when the dataset is linearly separable, and it not only provides a measure of how appropriate a predictor is, but also its direction of association (positive or negative). The major limitation of Logistic Regression is the assumption of linearity between the dependent variable and the independent variables. Linearly separable data is rarely found in real-world scenarios.
* Gradient Boosted Tree - Gradient boosting models are powerful algorithms which can be used for classification tasks and can perform incredibly well on very complex datasets. They are also easy to implement in Scikit-Learn. However, they are also prone to overfitting. Usually this can be avoided by tuning the parameter.
* Easy Ensemble AdaBoost Classifier - is an ensemble of AdaBoost learners trained on different balanced boostrap samples. The balancing is achieved by random under-sampling. This model owns the advantage of being a better performer thus making make better predictions than any single contributing model. It is also a 
robust model as it effectively reduces the spread or dispersion of the predictions and model performance. Like Gradient Boosting, they are good at providing high model scalability, but by reducing variance it solves the problem of overfitting.

The metrics used to evaluate/compare the models’ accuracy were:
* the accuracy score 
* the mean square error (MSE),
* the mean absolute error 
* the root mean square error 
