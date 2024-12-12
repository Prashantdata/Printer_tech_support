Select Customer_Issue, Issue_Category,count(Customer_Issue)
from tech_support_dataset
Where Issue_Category = "Hardware" OR Issue_Category = "Performance" OR Issue_Category ="Network"
group by Customer_Issue,Issue_Category
Order By Issue_Category,count(Customer_Issue) desc;

