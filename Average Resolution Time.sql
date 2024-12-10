Select * from tech_support_dataset;

Select count(Issue_Category) from tech_support_dataset;

Select avg(`Resolution_Time(min)`) from tech_support_dataset;

Select Customer_Issue, count(Customer_Issue)
from tech_support_dataset
group by Customer_Issue
Order By count(Customer_Issue) desc;

Select Issue_Category, count(Issue_Category)
from tech_support_dataset
group by Issue_Category
Order By count(Issue_Category) desc;

Select Issue_Category, count(Issue_Category)
from tech_support_dataset
group by Issue_Category
Order By count(Issue_Category) desc;

Select Issue_Status,Issue_Category, count(Issue_status)
from tech_support_dataset
Where Issue_status = "Pending"
group by Issue_status,Issue_Category
Order By issue_status, count(Issue_Status) desc
