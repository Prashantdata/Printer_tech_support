Select Issue_Category, count(Issue_Category)
from tech_support_dataset
group by Issue_Category
Order By count(Issue_Category) desc;
