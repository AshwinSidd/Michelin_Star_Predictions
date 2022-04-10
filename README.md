## Presentation
Google slides link - https://docs.google.com/presentation/d/1W40jNMnZmqNyO1W9koNfOlCWMyL6rSrReB-Hw7ZwxFc/edit?usp=sharing

## Group Project Overview
As part of our group project for UoT's Data Analytics Bootcamp, our team chose to work on builidng a machine learning model which would predict the next upcoming restaurant having the potential to earn atleast one of the Michelin 'stars'. All the team members felt that this would be an interesting topic and that it would help us put to good use the tools and concepts that we have learnt in this bootcamp.

## Reasoning
Michelin star restaurants earn more profit as the inspection/screening process is so elaborate and intense, that the star adds high value to a restaurant. Just a single Michelin star sends profits and footfalls soaring high and hence chefs are forever in the chase to earn these stars for their restauarnt(s). This also means that such restaurants are regularly seeked out by investors and hence our group aims at helping out these investors find their next big investment. 

## Data source
The data sets we would be using are - 
1) Michelin Star Information from Kaggle (https://www.kaggle.com/jackywang529/michelin-restaurants)
2) Zomato Restaurant information (https://www.kaggle.com/shrutimehta/zomato-restaurants-data)

## Goal
Determine which features adversly affect the decision to award a Michelin star. These features would be key indicators that would be used to then help build our machine learning model. Select which model to use, train and test this data and use it to predict which restaurant could be awarded a Michelin star next.

## Machine Learning Model 
The aim of this project was to determine whether a restaurant will be rated with a Michelin award (1-yes or 0-No). The classification model's algorithms would attempt to learn patterns from the data, and if the model is successful, gain the ability to make accurate predictions for new restaurants. The dataset was divided into 70% training data and 30% testing data. The dataset was encoded using label encoding. Using this encoded data, various machine learning algorithms was used to find the best fitting model. The various regression algorithms used to build the model were

Logistic regression - is a binary classifier which can categorize samples into one of two categories. A logistic regression model evaluates the probability of of event success and event failure. Two major advantages for logistictic regression is that it generally obtains good accuracy for many simple data sets and it performs well when the dataset is linearly separable, and it not only provides a measure of how appropriate a predictor is, but also its direction of association (positive or negative). The major limitation of Logistic Regression is the assumption of linearity between the dependent variable and the independent variables. Linearly separable data is rarely found in real-world scenarios.

Gradient Boosted Tree - Gradient boosting models are powerful algorithms which can be used for classification tasks and can perform incredibly well on very complex datasets. They are also easy to implement in Scikit-Learn. However, they are also prone to overfitting. Usually this can be avoided by tuning the parameter.

Easy Ensemble AdaBoost Classifier - is an ensemble of AdaBoost learners trained on different balanced boostrap samples. The balancing is achieved by random under-sampling. This model owns the advantage of being a better performer thus making make better predictions than any single contributing model. It is also a robust model as it effectively reduces the spread or dispersion of the predictions and model performance. Like Gradient Boosting, they are good at providing high model scalability, but by reducing variance it solves the problem of overfitting.

The metrics used to evaluate/compare the models’ accuracy were:
- the accuracy score
- the mean square error (MSE),
- the mean absolute error
- the root mean square error

## Technologies used
1. Data Cleaning and Analysis

- Data Sourced: Kaggle
- Data cleaning and analysis: Jupiter will be used initially to clean and analyze data. In this we will use Numpy and Pandas to read file.
    - Data Cleaning Process:
            - Check for Null values
            - Replace the Null values with 0 or drop rows after checking if sufficient data for analysis
            - Drop Columns that are not needed for Analysis
            - review data types
            - Change any sympbols to string or itegar
            - Narrow down the data based on City, Country etc. 
- Machine learning model can be test based on sample data on Jupiter as well
- Further Analysis done on Python
- Map location by using Longitude and Latitude
            -Layers can be built by using stars (1,2,3)


2. Database Storage
Using Amazon S3 to store data:
- Ability to use bukets and can call individually when analyzing in Python
- Ability to use CSV files as this a common source of data reporting
- Both structured and unstructured can be used 
- Secure and easily accessible
- Easy to use 
- Ability to be intergrated with multiple softwares such as Tableau

Process Steps:
Navigate to All Settings > Raw Data Export > CSV Upload. Toggle the switch to ON. Select Amazon S3 Bucket from the dropdown menu. Enter your Access Key ID, Secret Access Key, and bucket name.

3. Machine Learning
The tools for machine learning:
- After data is pre-processed and cleansed a machine learning model will be applied
- Based on finding a sample data will be first tested and trained to be applied
- The accuracy would be analyzed if the model will be good to use or explore other models
- Please see the Machine learning diagram for further details. 
- Other tools that can be used depending on test data: sklearn. Materix, Scailing and Splitting, clustering, linear regression or logistic regression etc.

4. Dashboard
Tableau will be used for dashboard.
- Reasoning: As the Amazon S3 will be used we can connect the data by using Athena connector in Tableau.
- Otherwise we can export the data after analyzing and import it directly in Tableau. Tableau have ability to also summarize data by using story telling tab. Further other visulization graph, charts, heatmap etc can be used to visualize findings. 



