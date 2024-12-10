Select Customer_Issue, count(Customer_Issue)
from tech_support_dataset
group by Customer_Issue
Order By count(Customer_Issue) desc;

