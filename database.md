# Database Work

## Goal
Find data sets to help us answer the question: how likely is this restaurant to get a michelin star?

## Data Sets

* Michelin Star Information from Kaggle (https://www.kaggle.com/jackywang529/michelin-restaurants)
* Zomato Resturant information (https://www.kaggle.com/shrutimehta/zomato-restaurants-data)

## Process (ETL)
### Extract 
* download 5 JSON Zomato files
    * 5 json data files
    * multiple dictionaries/layers in each file
    * country code file

* download michelin data (CSV)
    * 3 excel files --> one for each michelin star

### Transform
#### Zomato Data
* loop through different files
* Import zomato json file into jupyter notebook
* import country code translation file
* find length of layer 1 key-value pairs
* find length of layer 2 key-value pairs
* loop to run through each ' first layer' of KVP
    * if value = zero, continue to next value in loop
* loop to run through each 'second layer' of KVP to get restaurant data
* pull out the relevant columns needed
    * ID
    * Name
    * cuisines
    * price_range
    * user_rating
    * address
    * city
    * country_id
        * correct the country_id from a numerical to country name based on country code translation file
    * longitude
        * limit to 6 digits after decimal
    * latitude
        * limit to 6 digits after decimal
    * location_key column
* add to loop-DF
* append loop-DF to overall-DF
* clean up data types

* once data is turned into DF check for null or values and remove

#### Michelin Data
* for loop to bring each of the 3 CSV files
* import file
* create loop DF
* create a constant column to add the stars
* append to michelin-DF
* check for null values
* clean out any  null values
* create location_key column
* clean up data types


### Join DataSets
* do any checks for latitude/longitude to make sure they are in the same format/numbers --> create a primary key 'join' column in both datasets
* Join datasets based on primary key
* Use a left join on zomato_df
* test out how many from michelin were not joined --> is that significant?

## Load
Load into databased --> TBD
Data is structured, therefore Amazon, SQL is suitable

## Sample Data
* there will be a lot of data --> explore at least 2 different ways to sample to determine which is the best
* from there, create a sample data set as a CSV to share



## ERD
![ERD] (ERD LINK to be added)




