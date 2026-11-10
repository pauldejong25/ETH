{{ config(group = 'fraud_risk', access='private') }}
select *
from {{ ref('stg_token_transfer_aggs') }}