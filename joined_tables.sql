select
right(transaction_id,6) as transaction_id,transaction_date,
a.account_type,a.branch_city,a.branch_state,
amount,transaction_type,category,
merchant,payment_method,status
from transactions t
join accounts a 
on a.account_id=t.account_id;