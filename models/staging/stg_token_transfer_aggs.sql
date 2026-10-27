/*** Ephemeral Models ***
** This model is not materialized but this model can be used as a cte (common table expression)
*/
		{{ config(materialized='ephemeral')}}

		select transaction_hash,
		       count(*) as token_transfer_count
          from {{ ref('stg_token_transfers')}}
      group by transaction_hash