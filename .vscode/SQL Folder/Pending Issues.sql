Select Issue_Status,Issue_Category, count(Issue_status)
from tech_support_dataset
Where Issue_status = "Pending"
group by Issue_status,Issue_Category
Order By issue_status, count(Issue_Status) desc
