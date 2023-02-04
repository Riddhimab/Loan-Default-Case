# Loan-Default-Case

Our role: For the purpose of this project, we have taken on the role of consultants who have been hired by
Discover Financial Services to build a model to accept or deny their inflow of loan applications that’s suited to
their risk profile.

The business problem

The objective of our project is to identify different patterns which would help indicate if a client has difficulty
paying their loan installments and to strategize what actions to take depending on whether they have a higher
risk of defaulting on their agreement.
How the data mining solution will address the business problem:
We believe that the predictions from our model can help businesses maximize their profits. Banks gain most of
their revenue from sanctioning loans. A big task before approving a loan is running background checks to
ensure that the person has the willingness and ability to pay back the loan in the stipulated time. This can
determine whether the bank makes a profit or a loss, and hence it is key to determine the risk of taking on a
particular customer and lending them money. Based on the model algorithm we can determine the risk of the
customer and classify them into two buckets. Either their loan proposal is accepted (Category 0) or denied
(Category 1).

Software:
We have decided to use both Python and R for this project.

Data preparation
We have cleaned the dataset by doing the following:
Doing some exploratory data analysis, we have found that there were specific columns that have a lot of
missing values. So, we have dropped the ones that had more than 40,000 missing values.
We have also dropped the column that contained information about the ID of the loan, which would not help
us in our prediction.
There were also some independent variables that were highly correlated with each other. For example, the
amount of annuity and amount of credit had a correlation of 0.77. So, we dropped amount annuity from our
data.
Looking at the categorical variables, we dropped the rows that had very few records in our dataset and would
not add any predictive power in the model.
Finally, we also have removed the columns that we thought would not be helpful for the sake of our project.
For instance, we have dropped the columns which specified whether the client provided a specific type of
document for the loan approval. 
