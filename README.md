# * INTRODUCTION   
HELLO VIEWER THIS IS THE DATA SET I HAVE DOWNLOADED FROM THE KAGGLE.COM the data consist of the tech support solution there is less data with no date so i have assumed it as a 1 day data

Data Link : https://www.kaggle.com/datasets/steve1215rogg/tech-support-conversations-dataset

SQL Queries? check them out here : [SQL Folder](/SQL%20Folder/)

# * USED TOOLS
- Microsoft Excel for data cleaning, manipulation and bar graph.
- SQL fror analysis.
- Git & Github for version control and sharing my SQL scripts and analysis ensuring collaboration and project tracking.

# * SOLVED QUESTIONS
- What are the total issues recorded today ?
- What was the average resolution time ?
- How many issues are pending ?
- Top 3 issues category wise ?
- Detailed issues for clearification ?

# * ANALYSIS
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

### 3. Pending Issues
To identify the pending issues i have uses the where function to filter the pending queries and grouped the category and order it in descinding to know the clearity of pending issues and find out priorites from data set.
```sql
Select Issue_Status,Issue_Category, count(Issue_status)
from tech_support_dataset
Where Issue_status = "Pending"
group by Issue_status,Issue_Category
Order By issue_status, count(Issue_Status) desc
```
<p>
    <img src="assets\2_Pending_Issues.jpg" width="1080" height="250" />
</p>

### 4. Top 3 Issues
I have used the excel pivot table to make this bar graph to know the top 3 issues

<p>
    <img src="assets\3_Top_3_Issues.jpg" width="520" height="300" />
</p>

### 5. Customer Queries in detail
So i have filtered out the top 3 pending queries and dig in the factual issues for better resolution.

```sql
Select Customer_Issue, Issue_Category,count(Customer_Issue)
from tech_support_dataset
Where Issue_Category = "Hardware" OR Issue_Category = "Performance" OR Issue_Category ="Network"
group by Customer_Issue,Issue_Category
Order By Issue_Category,count(Customer_Issue) desc;
```
<p>
    <img src="assets\3_Detailed_Issue.jpg" width="800" height="400" />
</p>

# * CONCLUSION

### Insights

- Total of 1896 issues are very high in a day so have to check the system and service properly.
- Average resolution time is also very high so have to maintain the average call time and resolution time for good customer service.
- 25% of the queries are still pending so either have to increase the staff or decrease the resolution time.
- Top 3 Issues are Hardware, Network and Performance have to assign the respective team to get through the issue and resolve it for better customer service.

