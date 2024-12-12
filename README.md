# INTRODUCTION   
HELLO VIEWER THIS IS THE DATA SET I HAVE DOWNLOADED FROM THE KAGGLE.COM the data consist of the tech support solution there is less data with no date so i have assumed it as a 1 day data

Data Link : https://www.kaggle.com/datasets/steve1215rogg/tech-support-conversations-dataset

SQL Queries? check them out here : [SQL Folder](/SQL%20Folder/)

# Tools I Used
- Microsoft Excel for data cleaning, manipulation and bar graph.
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

[
  {
    "Customer_Issue": "Unable to access email",
    "Issue_Category": "Hardware",
    "count(Customer_Issue)": "65"
  },
  {
    "Customer_Issue": "Cannot connect to Wi-Fi",
    "Issue_Category": "Hardware",
    "count(Customer_Issue)": "64"
  },
  {
    "Customer_Issue": "Blue screen error",
    "Issue_Category": "Hardware",
    "count(Customer_Issue)": "58"
  },
  {
    "Customer_Issue": "Printer not responding",
    "Issue_Category": "Hardware",
    "count(Customer_Issue)": "56"
  },
  {
    "Customer_Issue": "Software installation failure",
    "Issue_Category": "Hardware",
    "count(Customer_Issue)": "56"
  },
  {
    "Customer_Issue": "Slow system performance",
    "Issue_Category": "Hardware",
    "count(Customer_Issue)": "53"
  },
  {
    "Customer_Issue": "Forgot password",
    "Issue_Category": "Hardware",
    "count(Customer_Issue)": "50"
  },
  {
    "Customer_Issue": "Printer not responding",
    "Issue_Category": "Network",
    "count(Customer_Issue)": "72"
  },
  {
    "Customer_Issue": "Slow system performance",
    "Issue_Category": "Network",
    "count(Customer_Issue)": "59"
  },
  {
    "Customer_Issue": "Software installation failure",
    "Issue_Category": "Network",
    "count(Customer_Issue)": "54"
  },
  {
    "Customer_Issue": "Forgot password",
    "Issue_Category": "Network",
    "count(Customer_Issue)": "53"
  },
  {
    "Customer_Issue": "Unable to access email",
    "Issue_Category": "Network",
    "count(Customer_Issue)": "52"
  },
  {
    "Customer_Issue": "Blue screen error",
    "Issue_Category": "Network",
    "count(Customer_Issue)": "48"
  },
  {
    "Customer_Issue": "Cannot connect to Wi-Fi",
    "Issue_Category": "Network",
    "count(Customer_Issue)": "40"
  },
  {
    "Customer_Issue": "Slow system performance",
    "Issue_Category": "Performance",
    "count(Customer_Issue)": "77"
  },
  {
    "Customer_Issue": "Cannot connect to Wi-Fi",
    "Issue_Category": "Performance",
    "count(Customer_Issue)": "63"
  },
  {
    "Customer_Issue": "Software installation failure",
    "Issue_Category": "Performance",
    "count(Customer_Issue)": "53"
  },
  {
    "Customer_Issue": "Printer not responding",
    "Issue_Category": "Performance",
    "count(Customer_Issue)": "53"
  },
  {
    "Customer_Issue": "Blue screen error",
    "Issue_Category": "Performance",
    "count(Customer_Issue)": "48"
  },
  {
    "Customer_Issue": "Unable to access email",
    "Issue_Category": "Performance",
    "count(Customer_Issue)": "45"
  },
  {
    "Customer_Issue": "Forgot password",
    "Issue_Category": "Performance",
    "count(Customer_Issue)": "42"
  }
]