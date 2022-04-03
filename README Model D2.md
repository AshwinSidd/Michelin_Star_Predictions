# Model Selection Group_5
The mechilin data sets have the variables discountinued in some category. So the deep forest model is chosen to be one of the main method for the machine learning of the prediction. 
## Limitation and Benifits of the model
- The limitation of the random forest model is that huge amount of trees could make the algorithm too slow and ineffective for the predictions. 100000 trees is set for this model and takes 10 min for computer to run. If the number of trees changed into a higher number, it would consume more time to react.

- Benifit of the random forest model is with a large amout of data, it could reduces the overfitting issue and also the variance with bagging algorithm/ensemble learning technique. With 40000+ row of the final data set, using this model to get the combination of the output of all trees could be effecient.
## Provisional Variables
So from the dataset in the previous section the following variables are the provisional variables.
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Variables.png)
- Cuisines: the category would have a rate from 0 to 1 to represent the rate of being awarded as least one star.
- price_ranges: For now, the price of the food would be categorized into two—casual (0) and fine dining (1)(Or it could be set up with 4 category with $&$$/$$$/$$$$/$$$$$.)
- avg_ratings: For 0-5 stars review rating
- mechelin_rated: the number of the mechilin star which is the output category of 0/1/2/3 stars. It is simply converted to be either 0 star or with stars in the final data set (the binary result).
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Images/Database%231.png)
- See all preprocessed data in the image above (For the detailed code of the preliminary data preprocessing, please see the data branch.)
## Provisional Model
### To Build a Random Tree with Random Data
The Random data sample would be fit in as the following metrix:
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/RandomData.png)
### Sample Tree and Output
The Sample Trees would be look like the following pictures:
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/SampleTree.png)
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Images/PartialTree%231.png)
- pdf version no available due to environment error for now, will fix it later!
### Sample Dataset & Model/Split Selection
- The Dataset used in deliverable 2 to build the random forest model is different than the final dataset. The sample dataset feed into the machine are provided in the Resources Folder.
- The Random Forest Classifier is a perfect model chosen for solving the star prediction problem.
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Images/Model%231.png)
- The sample dataset has relatively less data counts, so that a 0.3 for the test data split is setting up for now. However, for the final data set, there are 40000+ row of data so that the test data split would be set to 0.1 or less.
- The lable are temporarly set to 1,2,3 because the test data is based on 1, 2, 3. It would be changed to 0, 1 for the final data set.
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Images/Model%232.png)
- The temporary accuracy is around 80%. With final data set to feed in and less lable to predict, the accuracy would be expected to be higher. However, the error is quite high as shown in the figure. This is because the dataset for 2,3 stars is too less. Not provided enough data, the prediction keeps as 0 percent so that the error is high. 
- Once the final data set is fed into the model, and turning 0,1,2,3 stars to 0/1 binary result, the error could be avoided. The expected accuray for final data set is higher than the current model.
### Target
- For now, the target of this Deep Forest Model would be 75% accuracy. Hopefully after several optimization, it could reach the target. (Deliverabl1)
- The model fulfill the 75% accuracy target. Hoever, prediction for 2/3 stars are 0% accuracy. It need to be improved in next deliverable.
- Trying to build up a interface for users to input a random resturant features and return a star binary result.