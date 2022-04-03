## Presentation
Google slides link - https://docs.google.com/presentation/d/1W40jNMnZmqNyO1W9koNfOlCWMyL6rSrReB-Hw7ZwxFc/edit?usp=sharing

## Group Project Overview
As part of our group project for UoT's Data Analytics Bootcamp, our team chose to work on builidng a machine learning model which would predict the next upcoming restaurant having the potential to earn atleast one of the Michelin 'stars'. All the team members felt that this would be an interesting topic and that it would help us put to good use the tools and concepts that we have learnt in this bootcamp.

## Reasoning
Michelin star restaurants earn more profit as the inspection/screening process is so elaborate and intense, that the star adds high value to a restaurant. Just a single Michelin star sends profits and footfalls soaring high and hence chefs are forever in the chase to earn these stars for their restauarnt(s). This also means that such restaurants are regularly seeked out by investors and hence our group aims at helping out these investors find their next big investment. 

## Data source
The data sets we would be using are - 
1) Michelin Star Information from Kaggle (https://www.kaggle.com/jackywang529/michelin-restaurants)
2) Zomato Resturant information (https://www.kaggle.com/shrutimehta/zomato-restaurants-data)

Sample Data
a. there will be a lot of data --> explore at least 2 different ways to sample to determine which is the best
b. from there, create a sample data set as a CSV to share

## Goal
Determine which features adversly affect the decision to award a Michelin star. These features would be key indicators that would be used to then help build our machine learning model. Select which model to use, train and test this data and use it to predict which restaurant could be awarded a Michelin star next.

## Machine Learning Model 
We will be working around the below modelas - 
1) Deep Forest Model - The mechilin data sets have the variables discountinued in some category. So the deep forest model is chosen to be one of the main method for the machine learning of the prediction.

https://github.com/AshwinSidd/group_5_project/blob/FredericXu/RandomData.png?raw=true

https://github.com/AshwinSidd/group_5_project/blob/FredericXu/SampleTree.png?raw=true

2) Deep Neural Network 

A neural network will be used in the module with a certain amount of hidden layers and activation functions.

Based on the dataset the following is to be decided:
•	Target variable and features
•	Does any variable needs to be standardize
•	Does any category need binning?

Determine the metrics to be used in testing the robustness and performance of the model.
Can another model still be used and is logistic regression applicable

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



