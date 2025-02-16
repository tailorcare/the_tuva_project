select
    claim_id
    , data_source
    , max(case when column_name = 'DIAGNOSIS_CODE_1' then normalized_code else null end) as diagnosis_code_1
    , max(case when column_name = 'DIAGNOSIS_CODE_2' then normalized_code else null end) as diagnosis_code_2
    , max(case when column_name = 'DIAGNOSIS_CODE_3' then normalized_code else null end) as diagnosis_code_3
    , max(case when column_name = 'DIAGNOSIS_CODE_4' then normalized_code else null end) as diagnosis_code_4
    , max(case when column_name = 'DIAGNOSIS_CODE_5' then normalized_code else null end) as diagnosis_code_5
    , max(case when column_name = 'DIAGNOSIS_CODE_6' then normalized_code else null end) as diagnosis_code_6
    , max(case when column_name = 'DIAGNOSIS_CODE_7' then normalized_code else null end) as diagnosis_code_7
    , max(case when column_name = 'DIAGNOSIS_CODE_8' then normalized_code else null end) as diagnosis_code_8
    , max(case when column_name = 'DIAGNOSIS_CODE_9' then normalized_code else null end) as diagnosis_code_9
    , max(case when column_name = 'DIAGNOSIS_CODE_10' then normalized_code else null end) as diagnosis_code_10
    , max(case when column_name = 'DIAGNOSIS_CODE_11' then normalized_code else null end) as diagnosis_code_11
    , max(case when column_name = 'DIAGNOSIS_CODE_12' then normalized_code else null end) as diagnosis_code_12
    , max(case when column_name = 'DIAGNOSIS_CODE_13' then normalized_code else null end) as diagnosis_code_13
    , max(case when column_name = 'DIAGNOSIS_CODE_14' then normalized_code else null end) as diagnosis_code_14
    , max(case when column_name = 'DIAGNOSIS_CODE_15' then normalized_code else null end) as diagnosis_code_15
    , max(case when column_name = 'DIAGNOSIS_CODE_16' then normalized_code else null end) as diagnosis_code_16
    , max(case when column_name = 'DIAGNOSIS_CODE_17' then normalized_code else null end) as diagnosis_code_17
    , max(case when column_name = 'DIAGNOSIS_CODE_18' then normalized_code else null end) as diagnosis_code_18
    , max(case when column_name = 'DIAGNOSIS_CODE_19' then normalized_code else null end) as diagnosis_code_19
    , max(case when column_name = 'DIAGNOSIS_CODE_20' then normalized_code else null end) as diagnosis_code_20
    , max(case when column_name = 'DIAGNOSIS_CODE_21' then normalized_code else null end) as diagnosis_code_21
    , max(case when column_name = 'DIAGNOSIS_CODE_22' then normalized_code else null end) as diagnosis_code_22
    , max(case when column_name = 'DIAGNOSIS_CODE_23' then normalized_code else null end) as diagnosis_code_23
    , max(case when column_name = 'DIAGNOSIS_CODE_24' then normalized_code else null end) as diagnosis_code_24
    , max(case when column_name = 'DIAGNOSIS_CODE_25' then normalized_code else null end) as diagnosis_code_25
    , '{{ var('tuva_last_run')}}' as tuva_last_run
from {{ ref('normalized_input__int_diagnosis_code_voting') }}
where (occurrence_row_count = 1
        and occurrence_count > next_occurrence_count)
group by
    claim_id
    , data_source
