with accounts_cleaned as
(select
right(account_id,5) as account_id,
account_type,branch_city,branch_state,
open_date,credit_score,account_status
from accounts),

transactions_cleaned as
(select
right(transaction_id,6) as transaction_id,
right(account_id,5) as account_id,
transaction_date, amount,
transaction_type,category,merchant,
payment_method,status
from transactions)

select
a.account_id,a.credit_score,a.account_status,transaction_id,
transaction_date,category,
transaction_type,payment_method,status
from transactions_cleaned t
left join accounts_cleaned a 
on a.account_id=t.account_id
order by transaction_id;
