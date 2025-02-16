{{ config(
     enabled = var('claims_preprocessing_enabled',var('claims_enabled',var('tuva_marts_enabled',False)))
   )
}}

select distinct
    'medical_claim' as source_table
  , 'all' as claim_type
  , 'claim_id' as grain
  ,  claim_id    
  , 'duplicate_values' as test_category
  , 'duplicate medical claims' as test_name
  , '{{ var('tuva_last_run')}}' as tuva_last_run
from {{ ref('medical_claim') }} 
group by
    claim_id
    , claim_line_number
having count(*) > 1