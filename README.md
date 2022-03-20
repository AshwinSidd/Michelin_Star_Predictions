# Model Selection Group_5
The mechilin data sets have the variables discountinued in some category. So the deep forest model is chosen to be one of the main method for the machine learning of the prediction.
## Provisional Variables
So from the dataset in the previous section the following variables are the provisional variables.
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Variables.png)
- Cuisines: the category would have a rate from 0 to 1 to represent the rate of being awarded as least one star.
- price_ranges: For now, the price of the food would be categorized into two—casual (0) and fine dining (1)(Or it could be set up with 4 category with $&$$/$$$/$$$$/$$$$$.)
- user_ratings: For 0-5 stars review rating
- mechelin_rated: the number of the mechilin star which is the output category of 0/1/2/3 stars. (or it could be simplied to be either 0 star or with stars, the binary result)
## Provisional Model
### To Build a Random Tree with Random Data
The Random data would be fit in as the following metrix:
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/RandomData.png)
### Sample Tree and Output
The Sample Trees would be look like the following pictures:
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/SampleTree.png)
### Target
For now, the target of this Deep Forest Model would be 75% accuracy. Hopefully after several optimization, it could reach the target.