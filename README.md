# INTRODUCTION   
HELLO VIEWER THIS IS THE DATA SET I HAVE DOWNLOADED FROM THE KAGGLE.COM the data consist of the tech support solution there is less data with no date so i have assumed it as a 1 day data

Data Link : https://www.kaggle.com/datasets/steve1215rogg/tech-support-conversations-dataset

SQL Queries? check them out here : [SQL Folder](/SQL%20Folder/)

# Tools I Used
- Microsoft Excel for data cleaning and manipulation.
- SQL fror analysis.
- Git & Github for version control and sharing my SQL scripts and analysis ensuring collaboration and project tracking.

# Question i have Solved
- What are the total issues recorded today ?
- What was the average resolution time ?
- How many issues are pending ?
- Top 3 issues category wise ?
- Detailed issues for clearification ?

# Analysis
Each query for this project aimed at investigating specific aspect of the printer tech solution center.
Here,s How i approached each question.

### 1. Total issues recorderd today
To identify the total issues i used the count function to check the total isssues from the dataset.

```sql
Select count(Issue_Category)
From tech_support_dataset;
```
|Particulars|Count|
|-----------|-----|
|Issues     | 1896|

### 2. What was the average resolution time?
To identify the average i have uses the average function to identify the avearage time used to solve the issues of customer.

```sql
Select round(avg(`Resolution_Time(min)`),0)+ minute as Average_Time
From tech_support_dataset;
```
|Average Time| 63 Min|
|------------|-------|