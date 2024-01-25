Project: “Financial Risk analysis"
By Gerardo Mora Cuevas
Description
This Project aimed to analyze and predict financial risks for a financial institution, integrating various skills from data manipulation to the implementation of machine learning models. Below are the key steps that were carried out:
1.	Data Collection:

	Real financial data sources were used to obtain relevant information about transactions, loans, payment histories, etc.

2.	Data Cleaning and Preprocessing (SQL and Python):

	SQL was employed for the initial cleaning and organization of the data.
	Python was used for more advanced cleaning tasks, such as assigning values to missing data and normalizing data.

3.	Exploratory Data Analysis (Python and Tableau):

	An exploratory analysis was conducted using Python to generate descriptive statistics and initial visualizations.
	More advanced visualizations were created with Tableau to identify patterns and trends.

4.	Machine Learning – Risk Modeling (Python):

	A machine learning model was implemented to predict financial risks, such as a classification model to identify risky transactions.

5.	Model Evaluation (Python):

	Evaluated the effectiveness of the machine learning model in predicting financial risks, such as a classification model to identify risky transactions.

6.	Documentation:

	Provided detailed documentation explaining the process, from data collection to the implementation of the machine learning model and the creation of the dashboard.

Additional Considerations:
	Ensured ethical handling of sensitive data in accordance with regulations. 
This Project allowed me to showcase skills in SQL, Python, Tableau, and Machine Learning while addressing a relevant issue in the financial sector.

Step 1: Data Collection
Dataset: Cymbal Investments
This dataset is commercial data from a global asset and investment manager based in the U.S. This dataset provides a comprehensive view of trade capture reports for financial transactions. The data is presented in CSV format with multiple columns capturing essential information about each operation.
About the dataset:
The Cymbal brand was created for coherent storytelling on Google Cloud. The datasets are synthetic and provided to industry professionals for discovery, testing, and product evaluation.
Cymbal Investments
Cymbal Investments is a global asset and investment manager based in the U.S. Founded in 1925, the investment banking firm’s mission is to provide significant financial opportunities to veterans. After nearly a century of consistently positive returns and smart bets, it has become a global institution, acquiring multiple smaller funds and institutions. In 1986, Cymbal Investments was acquired by Cymbal Group. Today, the company manages $859 billion, employs over 49,000 people, and reported $35 billion in revenue in 2019. Cymbal Investments is digitally transforming legacy financial service institutions.
https://console.cloud.google.com/marketplace/product/cymbal/cymbal_investments?pli=1
Note: The original dataset has 1,048,576 rows. For speed and processing capacity reasons, only 50,000 rows were used.

CSV Columns:
1.	SendingTime

	Type: TIMESTAMP
	Mode: NULLABLE
	Description: Time the message was sent

2.	TargetCompID

	Type: STRING
	Mode: NULLABLE
	Description: Aigned value used to identify the firm receiving the message

3.	SenderCompID

	Type: STRING
	Mode: NULLABLE
	Description: Assigned value used to identify the firm sending the message

4.	Symbol

	Type: STRING
	Mode: NULLABLE
	Description: Trading Symbol of the asset

5.	Quantity

	Type: INTEGER
	Mode: NULLABLE
	Description: Overall/total quantity (e.g., number of shares)


6.	TransactTime

	Type: TIMESTAMP
	Mode: NULLABLE
	Description: Time the transaction occurred

7.	StrikePrice

	Type: FLOAT
	Mode: NULLABLE
	Description: Price at which the Contract For Difference (CFD) was entered

8.	LastPx

	Type: FLOAT
	Mode: NULLABLE
	Description: Price at which the CFD was entered

9.	MaturityDate

	Type: TIMESTAMP
	Mode: NULLABLE
	Description: Date of contract expiry

10.	TradeReportID

	Type: STRING
	Mode: NULLABLE
	Description: ID of this trade report

11.	TradeDate

	Type: DATE
	Mode: NULLABLE
	Description: Date the trade was executed

12.	CFICode

	Type: STRING
	Mode: NULLABLE
	Description: Financial instrument classification code


13.	Side

	Type: STRING
	Model: NULLABLE
	Description: Side


14.	OrderID

	Type: STRING
	Mode: NULLABLE
	Description: Order Identifier

15.	PartyID

	Type: STRING
	Mode: NULLABLE
	Description: Counterparty Identifier

16.	PartyIDSource

	Type: STRING
	Mode: NULLABLE
	Description: Party ID Source

17.	PartyRole

	Type: STRING
	Mode: NULLABLE
	Description: Counterparty role

Analysis of Variables (Columns)
1.	Key Variables:

	“SendTime” and “TransactTime” are time variables crucial for temporal analysis.
	“Quantity” and “LastPx” are relevant for evaluating the volume and price of transactions.

2.	Identification Variables:

	“OrderID”, “TradeReportID”, and “PartyID” are important identifiers.

3.	Asset Information:

	“Symbol” provides the trading symbol of the asset, while “strikePrice” and “MaturityDate” may be relevant for assets with options or futures contracts.

4.	Counterparty Information:

	“PartyID”, “PartyIDSource”, and “PartyRole” offer details about the counterparty in the transaction.











Step 2: Data Cleaning and Preprocessing
1.	Data Loading:

	Used SQL to load the dataset into a database (MySQL) to facilitate data manipulation.

2.	Handling Null Values:

	Identified and handled null values in the dataset. Options included either deleting rows with null values or imputing values based on the nature of the data.

3.	Formatting of Dates and Times:

	Ensured that time columns (“SendingTime”, “transactTime”, “MaturityDate”, “TradeDate”) were in the correct format, crucial for temporal analysis.

4.	Review of Anomalous Data:

	Explored distributions of numerical variables (“Quantity”, “StrikePrice”, “LastPx”) and verified if there were anomalous data that needed treatment.

5.	Review of Duplicate Data:

	Checked for duplicate rows and decided how to handle them.














Step 3: Exploratory Data Analysis (EDA)
Python
1.	Descriptive Statistics:
	Employed Pandas to derive descriptive statistics for the dataset, including means, medians, standard deviations, etc.
2.	Initial Visualizations
	Utilized Python visualization libraries like Matplotlib and Seaborn to craft initial visualizations, aiding in understanding the distribution relationships within the data.
Tableau
1.	Advanced Visualizations
	More advanced visualizations were created in Tableau to identify trends and patterns.


Step 4: Machine Learning – Risk Modeling
	Machine learning models were implemented to predict financial risks, such as Logistic Regression, Support Vector Machine, Decision Tree, Random Forest and Ada Boosting models to identify risky transactions.

Step 5: Model Evaluation
	Evaluated the effectiveness of the machine learning models in predicting financial risks to identify risky transactions.
