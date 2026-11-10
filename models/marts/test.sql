{{ config(group = 'fraud_risk', access='private') }}
select *
from {{ ref('confirmed_frauds') }}