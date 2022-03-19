# Database Work

## Goal
Find data sets to help us answer the question: how likely is this restaurant to get a michelin star?

## Data Sets

* Michelin Star Information from Kaggle (https://www.kaggle.com/jackywang529/michelin-restaurants)
* Zomato Resturant information (https://www.kaggle.com/shrutimehta/zomato-restaurants-data)

## Process (ETL)
# Extract 
* download 5 JSON Zomato files
    * 5 json data files
    * multiple dictionaries/layers in each file

* download michelin data (CSV)

## Transform
### Zomato Data
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
    * latitude
* add to loop-DF
* append loop-DF to overall-DF

* once data is turned into DF check for null or values and remove

### Michelin Data
* import data to jupyter notebook
* check for null values
* clean out any  null values


### Join DataSets
* do any checks for latitude/longitude to make sure they are in the same format/numbers --> create a primary key 'join' column in both datasets
* Join datasets based on primary key
* Use a left join on zomato_df
* test out how many from michelin were not joined --> is that significant?

## Sample Data
* there will be a lot of data --> explore at least 2 different ways to sample to determine which is the best
* from there, create a sample data set as a CSV to share

## Database
* TBD
* Data is structured, therefore Amazon, SQL is suitable

## ERD
CREATE AND ADD ERD BASED ON THE DATA



