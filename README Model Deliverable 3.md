# Model Selection Group_5
The mechilin data sets have the variables discountinued in some category. So the deep forest model is chosen to be one of the main method for the machine learning of the prediction. 
## Limitation and Benifits of the model
- The limitation of the random forest model is that huge amount of trees could make the algorithm too slow and ineffective for the predictions. 100000 trees is set for this model and takes 10 min for computer to run. If the number of trees changed into a higher number, it would consume more time to react.

- Benifit of the random forest model is with a large amout of data, it could reduces the overfitting issue and also the variance with bagging algorithm/ensemble learning technique. With 40000+ row of the final data set, using this model to get the combination of the output of all trees could be effecient.
## Provisional Variables
So from the dataset in the previous section the following variables are the provisional variables.
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Variables.png)
- total_reviews_count: count of the restaurant total review. Vary from 1 to 31144.
- price_level: For now, the price of the food would be categorized into —casual (1), moderate (2), and fine dining (3) from prelinary processing.
- avg_ratings: For 0-5 stars review rating
- mechelin: the number of the mechilin star which is the output category of with/without stars. It is converted to be either 0 star or with stars in the final data set (the binary result).
- any_award: from 0 to 1 if this resetaurant is awarded with any prize (1) or not (0).
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Images/Database%231.png)
- See all preprocessed data in the image above (For the detailed code of the preliminary data preprocessing, please see the data branch.) The columns are features (the index will be dropped later)
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Images/FinalDataDescribe.png)
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
- The Dataset used in deliverable 2 to build the random forest model is different than the final dataset. The sample dataset feed into the machine are provided in the Resources Folder. In deliverable 3, the final dataset is implemented into the model.
- The Random Forest Classifier is a perfect model chosen for solving the star prediction problem.
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Images/Model%231.png)
- The sample dataset has relatively less data counts, so that a 0.3 for the test data split is setting up for now. However, for the final data set, there are 40000+ row of data so that the test data split would be set to 0.1/0.15/0.3/0.45 on same number of Trees at 1000.
- The Tree Value is set to 100/1000/10000 at the test_split is fixed to 0.1. The tree value has to be stopped on 10000 as the model downloading took all the disk space.
- The lable are set to 0/1 to do predictions from 1/2/3 of Deliverable 2.
![image](https://github.com/AshwinSidd/group_5_project/blob/FredericXu/Images/ResultSummary.png)
- The result summary shows that, the accuracy of the overall model are close to 99%. It does a great job when predicting the restaurant without a star. However, the error is quite high when predictiing the starred restaurant. This is because there is little data of starred restaurant.
- When manipulating # of trees and portion of Test_split, the result of the model did not shift much. This is because there is too much data (98%) without star from the original dataset.
- For detailed results, please see the image folder located in group_5_project.
### Target
- It fulfills the target (75% overall preidction accuracy), which is set up in Deliverable 1.
- Due to reaction time, the interface is not recommanded for input a new data for the prediction.
- Future improvement are focusing on two issues:
1. getting more data for the mechilin restaurant for higher prediction with starred restaurant/or set any award as the outup to predict away award, which could increase the accruacy of the awarded restaurant prediction.
2. improve the model to regeression forest to show the details of how the # of trees and test_split value could actually affect to the accuracy of model.