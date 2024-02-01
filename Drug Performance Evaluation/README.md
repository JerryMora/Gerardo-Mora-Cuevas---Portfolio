Project: Drug Performance Evaluation

By Gerardo Mora Cuevas

Description
This project aimed to assess the effectiveness of medications based on patient reviews. The evaluation process involved a comprehensive approach, including data cleaning, data analysis, machine learning, and visualization. Below are the key steps that were carried out:
1. Data Collection:

* Data was collected from clinical trials available on relevant websites.

2. Data Cleaning and Preprocessing (SQL and Python):

* Rigorous data cleaning and preprocessing steps were implemented to ensure the quality of the data.
* A dedicated SQL database was created for efficient storage, and Python (Pandas, NumPy) was utilized for in-depth data inspection and cleaning.

3. Exploratory Data Analysis (Python):

* Python, along with Pandas and NumPy, was employed to conduct an initial exploratory analysis of the stored data.
* Patterns, distributions, and relevant features were identified through this analysis.

4. Machine Learning Integration and Model Evaluation (Python):

* Machine learning models were implemented to predict the perceived effectiveness of medications based on patient reviews.
* The models underwent training using key features derived from a clinical trial in which the patient s sentiments and experiences were taken into count.

5. Development of Visualizations in Tableau:

* Visualizations in Tableau were crafted to graphically represent the results of the exploratory analysis and predictions from the machine learning model.
* An interactive dashboard was developed, providing an intuitive platform for interpreting the data.

6. Presentation of Results and Conclusions:

* The results obtained from the exploratory analysis and the machine learning model were interpreted.
* Conclusions regarding the effectiveness of medications, based on patient reviews, were formulated. Recommendations based on the findings were presented.

7. Documentation:

* Provided detailed documentation explaining the entire process from data collection to the implementation of the machine learning model and the creation of the dashboard.

Tools used:
* SQL: Utilized for data cleaning and storage.
* Python (Pandas, NumPy): Used for comprehensive data analysis and cleaning.
* Machine Learning (scikit-learn): Implementation of machine learning models.
* Tableau: Developed advanced visualizations.

Step 1: Data Collection
In the initial phase, my focus was on collecting comprehensive data from a clinical trial in which the patient s sentiments and experiences were taken into count. The dataset selected for this analysis is detailed below: 
Dataset: Drug Database
The patient medication reviews were sourced from reputable healthcare platforms, providing valuable insights into the perceived effectiveness of various medications.
Source: https://doi.org/10.5281/zenodo.3571494
This dataset contains drug performance metrics for 37 common conditions, so it can be used to compare and analyze the effectiveness, cost, and satisfaction of different drugs.
Name of the file: Drug.csv
About this file: This file contains performance metrics for 37 common conditions, including name, type, form, average price, reviews, effectiveness, ease of use, and satisfaction.
Dataset Structure:
The dataset comprises patient reviews for various medications, and it includes the following key columns:
Column Name
Type
Description
Condition
String
The medical condition associated with the drug
Drug
String
The name of the drug being reviewed
Indication
String
The purpose or indication of the drug
Type
String
The type of drug (generic or brand)
Reviews
Integer
The number of reviews associated with the drug
Effective
Integer
The effectiveness of the drug based on customer reviews
EaseOfUse
Integer
The ease of use of the drug based on customer reviews
Satisfaction
Integer
The satisfaction level of the drug based on customer reviews
Information
String
Other relevant information about the drug
Considerations:
* Patient privacy and confidentiality were strictly adhered to during the data collection process.
* Only aggregated and anonymized data were used for analysis, without disclosing any personally identifiable information.
This dataset, encompassing a range of medication-related information and patient feedback, serves as the foundational dataset for the subsequent steps in the project.
Step 2: Data Cleaning and Preprocessing (SQL and Python)
In this phase, the collected patient medication review data was loaded into a MySQL server for efficient storage and underwent an initial round of cleaning in SQL. The subsequent steps involved further cleaning and preprocessing using Python (Pandas).
Here s an overview of the process:
1. Data Loading (SQL   MySQL):
* The patient medication review data was loaded into a MySQL server to facilitate efficient storage and retrieval.
2. Data Type Correction:
* Converted the  Reviews  column to an integer data type.
* Converted each column data type into the corresponding format.
3. SQL Cleaning:
* Utilized SQL queries for preliminary data cleaning and adjustments.
* Extracted the number of reviews from the  Reviews  column.
* Adjusted rating columns to integer values within the 1 to 5 range.
4. Handling Null or Inconsistent Values
* Identified and successfully addressed any null or inconsistent values in the relevant columns.
5. Data Cleaning in Python
* Obtained the Price and Form of the drug extracted from the  Information  column with the Tokenizer Package.
* Concatenated these new features into the main dataframe.
* Checked the data types.
* Delete duplicate data with the average.

Step 3: Exploratory Data Analysis (EDA)
Exploratory Data Analysis Overview
The exploratory data analysis (EDA) for the Drug Performance Evaluation project involved a in-depth examination of the Drug Dataset. This dataset, stored in a CSV file, was imported, and explored using Python and Pandas library. The analysis aimed to uncover insights into the relationships between different variables related to drug conditions, types, forms, and user perceptions.
Dataset Overview
* Dimensions: The dataset s dimensions were further explored using the shape function, revealing 685 rows and 10 columns.
* Data Types and Null Values: All columns have appropriate data types, and there are no null values in the dataset.
Descriptive Statistics
Descriptive statistics provided valuable insights into the characteristics of the dataset:
* There are 37 medical conditions treated by 470 unique drugs.
* Hypertension is the most treated condition.
* Niacin is the most frequent drug.
* Tablet is the most frequent form.
* The average price of all the drugs is $174.21.
* The cheapest drug costs an average of $4.
* The most expensive drug costs an average of $10362.19.

Exploratory Visualizations
A series of visualizations were created to enhance the understanding of the dataset:
1. Histograms
Histograms of  EaseOfUse ,  Effective ,  Satisfaction , and  Reviews  revealed the distribution of these numeric variables.
2. Correlation Matrix
A correlation matrix was generated to explore relationships between numeric variables, highlighting strong correlations between effectiveness and satisfaction, with a value of 0.68, and effectiveness and ease of use, with a value of 0.659.
3. Bar graphs
Frequency distributions of medical conditions, drug forms, and types were visualized to identify patterns.
4. Boxplots
Boxplots were utilized to depict the distribution of prices based on drug type and effectiveness.
5. Scatter plots
Relationships between variables such as ease of use and effectiveness, ease of use and satisfaction, and price and satisfaction were explored through scatter plots.
6. Heatmap
A heatmap was generated to visualize the average price across different medical conditions and drug types.
7. Scatterplot with Size and Color Mapping
A scatterplot was used to show the relationship between price, effectiveness, and satisfaction.
8. Pair plot
A pair plot was created to visualize the relationships between numeric variables.
Conclusions From EDA
In conclusion, the exploratory data analysis provided valuable insights into the drug performance dataset. The visualizations and analyses conducted shed light on the relationships between various factors, such as drug effectiveness, user satisfaction, and pricing. These findings serve as a foundation for further analysis and decision-making in the context of drug performance evaluation.
The project has contributed to a better understanding of the dataset s characteristics, and visualizations offer a comprehensive overview of the key features. The documented analysis provides a clear narrative for readers and can be a valuable resource for future references.

Step 4: Machine Learning Integration and Model Evaluation
This section focuses on integrating machine learning models to predict the perceived effectiveness of medications based on patient reviews. Various models were trained and evaluated to understand their effectiveness in capturing the relationships within the data.
Effectiveness of a drug based on the features EaseOfUse, Price, Reviews, and Satisfaction
1. Random Forest Classification
The Random Forest Regression model leverages an ensemble of decision trees to predict medication effectiveness. It performed well, with a Mean Squared Error 0.25 and an R2 Score of 0.70. The R2 Score indicates how well the model captures the variance in the target variable.
2. Linear Regression
Linear Regression aims to establish a linear relationship between input features and the target variable. The model yielded a Mean Squared Error of 0.28 and an R2 Score of 0.66, demonstrating a decent predictive performance.
3. Support Vector Regression (SVR)
SVR is a regression algorithm that utilizes support vector machines. It produced a Mean Squared Error of 0.30 and an R2 Score of 0.63, showcasing its ability to capture patterns in the data.
4. Huber Regression
The Huber Regression is robust to outliers and strikes a balance between mean squared error and mean absolute error. It achieved a Mean Squared Error of 0.29 and an R2 score of 0.65.
5. LassoCV
LassoCV employs L1 regularization to select relevant features and mitigate overfitting. The model demonstrated a Mean Squared Error of 0.28 and R2 Score of 0.66, indicating effective predictive performance.
6. RidgeCV
RidgeCV, utilizing L2 regularization, is effective in handling multicollinearity. It resulted in a Mean Squared Error of 0.28 and an R2 Score of 0.66, comparable to LassoCV.
7. Gradient Boosting Regression
Gradient Boosting Regression builds a series of weak learners to create a strong predictive model. It outperformed other models with a Mean Squared Error of 0.23 and an R2 Score of 0.71, signifying high predictive accuracy.

Model Comparison
To compare the models, an accuracy bar graph was created. The Gradient Boos Regression and Random Forest Regression models demonstrated the highest accuracy with R2 Scores of 0.71 and 0.70, respectively.

Model
MSE
R2 Score
Random Forest Regression
0.25
0.70
Linear Regression
0.28
0.66
Support Vector Regression
0.30
0.63
Huber Regression
0.29
0.65
LassoCV
0.28
0.66
RidgeCV
0.28
0.66
Gradient Boosting Regression
0.23
0.71
Relation between Price and Effectiveness
Analyzing the relation between Price and Effectiveness using Linear Regression yielded an R2 Score of 0.60905, suggesting a moderate ability to predict effectiveness based on these features.

Comparison between Different Medical Conditions
When comparing different medical conditions using various models, Linear Regression achieved an R2 Score of 0.68. Random Forest, SVR, Huber Regression, LassoCV, and Gradient Boosting Regression were also employed, each showcasing unique strengths in predicting patient satisfaction based on medical conditions.

Conclusion
In summary, the machine learning models displayed varying degrees of effectiveness in predicting medication outcomes. Gadient Boosting Regression stood out with high accuracy. Consideration of model selection depends on specific use cases and the trade-offs between accuracy and computational complexity. The analysis also extended to exploring the relation between Price and Effectiveness, as well as comparing models across different medical conditions, providing valuable insights for healthcare professionals. Further optimization and updates to these models can enhance their real-world applicability.


Step 5: Data Visualization with Tableau
In this step, I leveraged Tableau for data visualization, creating visual representations of key insights obtained during the Exploratory Data Analysis in Python. Three dashboards were designed to provide a comprehensive view of the dataset.

Dashboard 1: Feature Distribution
Objective:
Visualize the distribution of key features in the dataset to gain insights into their patterns.
1. EaseOFUse Histogram:
* Displays the distribution of EaseOfUSe ratings.
* Helps identify the common range of ease of use reported by patients.
2. Effective Histogram:
* Illustrates the distribution of perceived medication effectiveness.
* Allows for understanding the prevalence of different effectiveness ratings.
3. Satisfaction Histogram:
* Represents the distribution of patient satisfaction ratings.
* Highlights common levels of satisfaction reported by patients.
4. Reviews Histogram:
* Shows the distribution of the number of reviews.
* Provides insights into the frequency of patient feedback.

Dashboard 2: Medical Conditions and Medication Characteristics
Objective:
Explore the frequency of medical conditions, medication forms, and types.
1. Medical Conditions Bar Chart:
* Depicts the frequency of each medical condition.
* Offers insights into the prevalence of various health issues.
2. Medication Form Bar Chart:
* Represents the distribution of medication forms.
* Highlights the popularity of different forms of medication.
3. Medication Type Bar Chart:
* Shows the frequency of each medication type.
* Provides an overview of the variety of medications in the dataset.

Dashboard 3: Relationships and Impact
Objective:
Analyze relationships between key features and their impact on patient experiences.
5. EaseOfUse vs Satisfaction Scatterplot:
* Displays the scatterplot showcasing the relationship between ease of use and satisfaction.
* Helps identify patterns or correlations between these two factors.
6. EaseOfUse vs Effective Sactterplot:
* Illustrates the scatterplot showcasing the relationship between ease of use and satisfaction.
* Helps to identify patterns or correlations between these two factors.
7. Price vs Satisfaction Scatterplot:
* Presents the scatterplot depicting the relationship between medication price and patient satisfaction.
* Allows for insights into how pricing may impact patient satisfaction.
8. Price vs Effectiveness with Satisfaction Scatterplot:
* Shows the scatterplot revealing the relationship between medication price, effectiveness, and satisfaction.
* Provides a comprehensive view of the interplay between these three factors.

Conclusion:
These Tableau dashboards effectively visualize key aspects of the dataset, allowing for a comprehensive understanding of the feature distribution, medical conditions, medication characteristics, and the impact of key features on patient experiences. Visualizations are instrumental in deriving actionable insights and facilitating informed decision-making.


Step 6: Presentation of Results and Conclusions
Overview:
In this step, we summarize the key findings and insights derived from the machine learning models, data visualizations, and analyses performed on the "Drug Performance Evaluation" project. The presentation aims to communicate the results effectively to stakeholders and draw meaningful conclusions.

Key Findings:

1. Machine Learning Models:
* Implemented multiple regression models to predict medication effectiveness based on patient reviews.
* Random Forest Regression and Gradient Boosting Regression outperformed other models, achieving an R2 score of 0.70 and 0.71, respectively.
* Linear Regression, Support Vector Regressor (SVR), Huber Regressor, LassoCV and RidgeCV were also evaluated.

2. Feature Importance:
* Identified key features (EaseOfUse, Price, Reviews, Satisfaction) contributing to the prediction of medication effectiveness.
* Explored the relationships between these features and their impact on perceived effectiveness.

3. Price vs Effectiveness:
* Explored the relationship between medication price and effectiveness.
* Utilized a linear regression model to understand the correlation.

4. Medical Conditions Analysis:
* Explored the impact of medical conditions on patient satisfaction.
* Analyzed the relationship using regression models and visualizations.

5. Tableau Dashboards:
Created three Tableau dashboards to visually represent key aspects of the dataset.
* Dashboard 1: Feature Distribution.
* Dashboard 2: Medical Conditions and Medication Characteristics.
* Dashboard 3: Relationships and Impact.

Conclusions:

1. Optimal Model Selection:
* Random Forest Regression demonstrated superior predictive performance for medication effectiveness.
* Consideration should be given to its implementation for future predictions.

2. Feature Insights:
* EaseOfUse, Price, Reviews, and Satisfaction are crucial features influencing perceived medication effectiveness.
* Understanding and optimizing these factors can enhance overall patient experiences.

3. Price Considerations:
* The relationship between medication price and effectiveness was explored.
* A nuanced understanding of pricing impact can guide decisions regarding affordability and patient satisfaction.

4. Medical Conditions Influence:
* Analyzing medical conditions provides insights into patient satisfaction.
* Tailoring medication strategies based on specific conditions can enhance overall effectiveness.

Recommendations:
1. Implement Random Forest Regression:
* Consider using the Random Forest Regression model for future predictions due to its superior performance.

2. Feature Optimization:
* Focus on optimizing EaseOfUse, Price, Reviews, and Satisfaction to positively influence medication effectiveness.

3. Pricing Strategy:
* Develop a pricing strategy that balances affordability with perceived effectiveness and patient satisfaction.

4. Condition-Specific Approaches:
* Tailor medication approaches based on specific medical conditions to address unique patient needs.

Next Steps:

1. Deployment:
* Deploy the recommended machine learning model for real-time predictions.
* Monitor and refine predictions based on ongoing data.

2. Continuous Analysis:
* Conduct regular analyses on new data to identify evolving trends.
* Adapt strategies based on changing patient preferences and market dynamics.

3. Feedback Loop:
* Establish a feedback loop with healthcare professionals and patients to gather qualitative insights.
* Use feedback to further refine models and strategies.

Conclusion:
The combined analysis of machine learning models and Tableau visualizations provides a comprehensive understanding of the dataset, enabling informed decision-making in the evaluation of drug performance. The project's outcomes offer valuable insights into feature importance, pricing considerations, and condition-specific approaches, laying the foundation for strategic improvements in medication effectiveness and patient satisfaction.



