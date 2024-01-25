Project: Medication Effectiveness Evaluation
By Gerardo Mora Cuevas

Description
This Project aimed to utilize a variety of techniques, including data analysis, machine learning, and visualization, to assess the effectiveness of a medication using clinical data. Below are the key steps that were carried out:
1.	Data Collection:

	Data was collected from clinical trials available on relevant websites.

2.	Data Cleaning and Preprocessing (SQL and Python):

	Ensured the data was clean and ready for analysis; however, no specific data cleaning or preprocessing steps were performed.
	Created a dedicated SQL database for efficient storage, though no extensive preprocessing was necessary.
	Utilized Python (Pandas and NumPy) for basic data inspection.

3.	Exploratory Data Analysis (Python):

	Python, along with Pandas and NumPy, was utilized to conduct an initial exploratory analysis of the stored data.
	Patterns, distributions, and relevant features were identified through this analysis.

4.	Machine Learning Integration and Model Evaluation (Python):

	Machine learning models were implemented to predict the effectiveness of a medication based on the available data.
	The models underwent training using key features derived from clinical trials and medication data.

5.	Development of Visualizations in Tableau:

	Visualizations in Tableau were crafted to graphically represent the results of the exploratory analysis and predictions from the machine learning model.
	An interactive dashboard was developed, providing an intuitive platform for interpreting the data.

6.	Presentation of Results and Conclusions:

	The results obtained from the exploratory analysis and the machine learning model were interpreted.
	Conclusions regarding the effectiveness of the evaluated medication were formulated. Recommendations based on the findings were presented.

7.	Documentation:

	Provided detailed documentation explaining the process, from data collection to the implementation of the machine learning model and the creation of the dashboard.

Tools used:
	SQL: Utilized for data storage and basic inspection.
	Python (Pandas, NumPy): Used for basic data analysis.
	Machine Learning (scikit-learn): Implementation of machine learning models.
	Tableau: Developed advanced visualizations.

Step 1: Data Collection
In the initial phase, my focus was on collecting comprehensive data from clinical trials and medication sources. 
Dataset: Early Treatment with Prednisolone or Acyclovir in Bell’s Palsy
This is synthetic patient-level clinical trial data, re-created based on data from a clinical trial for corticosteroids and antiviral agents as treatment for Bell’s Palsy.
Source: https://www.nejm.org/doi/full/10.1056/nejmoa072006#
Bell’s palsy is a sudden, temporary weakness or paralysis of the muscles on one side of the face. The exact cause is unknown, but it’s believed to have occurred due to swelling and inflammation of the nerve that controls the muscles on one side of the face, which can be triggered by a viral infection.
The authors conducted a double-blind, placebo-controlled, randomized, factorial trial involving patients with Bell’s Palsy who were recruited within 72 hours after the onset of symptoms. Patients were randomly assigned to receive 10 days of treatment with prednisolone, acyclovir, both agents, and placebo. The primary outcome was recovery of facial function, as rated on the House-Brackmann scale.
Bellow the House-Brackmann scale:
 

Name of the file: Bells Palsy Clinical Trial.csv
About this file: This file contains synthetic patient data, based on patient data from a real clinical trial. The file includes patient demographic data as well as treatment group, time from diagnosis to treatment, medications received, and level of facial paralysis on the House-Brackmann scale at various time intervals.
Columns:
Column Name	Type	Description
Patient ID	Integer	
Sex	String	
Age	Integer	
Baseline Score on House-Brackmann scale	Integer	Horse-Brackmann score at diagnosis
Time Between Onset of Symptoms and Start of Treatment	String	
Treatment Group	String	Group based on randomized 2 x 2 factorial design
Received Prednisolone	Boolean	
Received Acyclovir	Boolean	
3-Month Score on House-Brackmann Scale	Integer	
Full Recovery in3 Months	Boolean	
9 Month Score on House-Brackmann Scale	Integer	House-Brackmann score 9 months after diagnosis
Full Recovery in 9 Months	Boolean	


Step 3: Exploratory Data Analysis (EDA)
Exploratory Data Analysis Overview
In this phase of the project, an extensive Exploratory Data Analysis (EDA) was conducted to gain insights into the dataset related to the Early Treatment with Prednisolone or Acyclovir in Bell’s Palsy clinical trial.

Dataset Overview
	Dimensions: The dataset consists of 494 entries and 12 columns.
	Data Types and Null Values: All columns have appropriate data types, and there are no null values in the dataset.
Descriptive Statistics
Descriptive statistics provided valuable insights into the characteristics of the dataset:
	Patient Demographics:

	The average age of all patients is approximately 45 years.
	The minimum age observed is 16 years, while the maximum is 90 years.
	Most patients fall within the age range of 34 to 55 years.

	Baseline Score on House-Brackmann Scale:

	The average baseline score on House-Brackmann scale is between 3 and 4, indicating moderate facial paralysis.

	Time between Onset of Symptoms and Start of Treatment:

	Most patients initiated treatment within 24 hours of symptom onset.

Gender Distribution
	Gender Count:

	Male patients: 256 (51.8%)
	Female patients: 238 (48.2%)
	There is a slightly higher proportion of male patients in the dataset.

	Gender Distribution Visualization:

	The pie chart and count plot visualizations provided a clear overview of the gender distribution among participants.

Age Distribution
	Age Distribution Visualization:

	A histogram revealed a peak in the distribution around 45 years old, indicating that most patients are of this age.

Treatment Group Analysis
	Treatment Group Count:

	Acyclovir-Prednisolone: 127 patients
	Prednisolone-Placebo: 123 patients
	Acyclovir-Placebo: 122 patients
	Placebo-Placebo: 122 patients

	Treatment Group Distribution Visualization:

	Visualizations showcased the distribution of patients among different treatment groups.
Time Analysis
	Time between Onset and Treatment Visualization:

	A count plot illustrated the distribution of patients based on the time between onset of symptoms and the start of treatment.

Detailed Comparison Between Treatments
	Recovery in 3 Months:

	The Prednisolone-Placebo group showed the highest count of patients fully recovering in 3 months.

	Recovery in 9 months:

	The Acyclovir-Prednisolone group demonstrated better performance than the prednisolone-Placebo group after 9 months.

Gender and Age Analysis
	Age Distributions by Gender:

	Violin plots depicted age distributions based on gender and recovery status after 3 and 9 months.

Medication Impact Analysis
	Prednisolone Impact on Recovery:

	Count plots visualized the impact of Prednisolone on recovery in 3 and 9 months.

	Acyclovir Impact on Recovery:

	Similar count plots showed the impact of Acyclovir on recovery in 3 and 9 months.

Conclusions From EDA
1.	Demographics:

	Most participants are between 34 and 55 years old.
	The baseline House-Brackmann score suggests moderate facial paralysis on average.

2.	Treatment Groups:

	Acyclovir-Prednisolone and Prednisolone-Placebo are the most common treatment groups.

3.	Time Analysis:

	Most patients started treatment within 24 hours of symptom onset.

4.	Detailed Comparisons:

	Prednisolone-Placebo showed the highest recovery in 3 months, while Acyclovir-Prednisolone performed better after 9 months.

5.	Gender and Age Impact:

	Younger patients, irrespective of gender, tend to show better recovery.

6.	Medication Impact:

	Both Prednisolone and Acyclovir positively influence recovery, with varying impact durations.

The EDA phase has provided essential insights, laying the foundation for subsequent machine learning model development and visualization in Tableau.


Step 4: Machine Learning Integration and Model Evaluation
In this step, various machine learning models were implemented to predict the likelihood of full recovery from Bell’s Palsy within 3 months based on patient characteristics. Let’s briefly discuss each model and their corresponding evaluation metrics:

1.	Random Forest Classification
Random Forest is an ensemble learning method that combines multiple decision trees to improve accuracy and control overfitting. The model achieved an accuracy of approximately 28% 74%. The classification report shows a precision of 84% for predicting “Yes” (full recovery) and 28% for predicting “No”.
2.	Support Vector Machine (SVM)
SVM is a powerful classification algorithm that aims to find a hyperplane to separate data points into classes. The SVM model achieved an accuracy of 83%. The classification report indicates a high precision of 84% for predicting “Yes”, but a lower precision of 60% for predicting “No”.
3.	Gradient Boosting
Gradient Boosting is an ensemble learning technique that builds multiple weak learners to create a strong learner. The model achieved an accuracy of 77%, with a precision of 85% for predicting “Yes” and 35% for predicting “No”.
4.	Logistic Regression
Logistic regression is a linear model for binary classification. The model achieved an accuracy of 78%. The precision for predicting “Yes” was high at 86%, but lower at 38% for predicting “No”.
5.	K-Nearest Neighbors (KNN)
KNN is a simple and effective classification algorithm based on similarity measures. The KNN model achieved an accuracy of 74%, with a precision of 86% for predicting “Yes” and 32% for predicting “No”.
6.	Support Vector Machine with Polynomial Kernel
This SVM variant uses a polynomial kernel to capture non-linear relationships in the data. The model achieved an accuracy of 83%, with a precision of 83% for predicting “Yes” and 67% for predicting “No”.

Model Comparison
To compare the models, an accuracy bar graph was created. The Support Vector Machine with Polynomial Kernel and SVM models demonstrated the highest accuracy, both reaching 83%.

Model	Accuracy	Precision (Yes)	Precision (No)	Recall (Yes)	Recall (No)	F1-Score (Yes)	F1-Score (No)
Random Forest	74%	84%	24%	84%	28%	0.74	0.41
SVM	83%	84%	60%	98%	17%	0.90	0.26
Gradient Boosting	77%	85%	35%	86%	33%	0.86	0.34
Logistic Regression	78%	86%	38%	88%	33%	0.87	0.35
K-Nearest Neighbors (KNN)	74%	86%	32%	81%	39%	0.84	0.35
SVM Polynomial Kernel	83%	83%	67%	99%	11%	0.90	0.19




Step 5: Data Visualization with Tableau
In this step, I leveraged Tableau for data visualization, creating visual representations of key insights obtained during the Exploratory Data Analysis in Python. Two dashboards were designed to provide a comprehensive view of the dataset.
Dashboard 1: Demographics and Treatment Groups
	The first dashboard integrates various visualizations related to demographic information, gender distribution, and treatment groups. These visualizations offer a detailed exploration of the patient population, allowing for a better understanding of the characteristics within each treatment group.
Dashboard 2: Recovery Counts by Treatment Group
	The second dashboard focuses on the count of patients who achieved recovery at both the 3-month and 9-month marks. This provides a clear overview of the effectiveness of different treatments over time. The segmentation of recovery counts by treatment group facilitates a quick comparison of outcomes.
By employing Tableau, I aimed to enhance the accessibility and interpretability of my findings. The visualizations serve as valuable tools for both technical and non-technical stakeholders, enabling them to grasp important patterns and trends within the data at a glance.


Step 6: Presentation of Results and Conclusions
As I transition to the presentation of results and conclusions, it is paramount to synthesize the insights gleaned from both the exploratory analysis and the machine learning model. This phase encapsulates the essence of our endeavor to assess the effectiveness of the evaluated medication for Bell’s Palsy.
Exploratory Analysis Insights Recap:
1. Demographics:
	Most participants fall within the age range of 34 to 55 years.
	The baseline House-Brackmann score suggests moderate facial paralysis on average.

2. Treatment Groups:
	Acyclovir-Prednisolone and Prednisolone-Placebo are the predominant treatment groups.

3. Time Analysis:
	Most patients initiated treatment within 24 hours of symptom onset.

4. Detailed Comparisons:
	Prednisolone-Placebo exhibited the highest recovery in 3 months.
	Acyclovir-Prednisolone performed better than Prednisolone-Placebo after 9 months.

5. Gender and Age Impact:
	Younger patients, irrespective of gender, tend to show better recovery.

6. Medication Impact:
	Both Prednisolone and Acyclovir positively influence recovery, with varying impact durations.

Machine Learning Model Evaluation Recap:
	Different models were applied, each demonstrating varying accuracy and precision.
	Support Vector Machine with Polynomial Kernel and SVM models stood out with the highest accuracy of 83%.

Conclusions:
1. The analysis underscores the importance of early treatment initiation, with most patients starting within 24 hours.
2. Prednisolone-Placebo demonstrated notable effectiveness, particularly in achieving early recovery within 3 months.
3. Age emerged as a significant factor, indicating that younger patients generally experience better recovery outcomes.
4. The machine learning models, especially SVM with Polynomial Kernel and SVM, exhibited promising accuracy in predicting recovery.

Recommendations:
1. Encourage prompt treatment initiation within the critical 24-hour window for optimal effectiveness.
2. Consider the efficacy of Prednisolone-Placebo treatment, especially for those seeking quicker recovery.
3. Factor in age as a crucial variable in treatment planning, emphasizing tailored approaches for different age groups.

By synthesizing these insights, we provide a foundation for evidence-based decision-making, fostering a deeper understanding of the medication's impact on Bell's Palsy treatment outcomes. This sets the stage for informed discussions and potential improvements in patient care strategies.
