{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_319') }}
select
    _AIRBYTE_319_HASHID,
    {{ json_extract_scalar(adapter.quote('10359'), ['parent'], ['parent']) }} as PARENT,
    {{ json_extract_scalar(adapter.quote('10359'), ['shown'], ['shown']) }} as SHOWN,
    {{ json_extract_scalar(adapter.quote('10359'), ['answer'], ['answer']) }} as ANSWER,
    {{ json_extract_scalar(adapter.quote('10359'), ['question'], ['question']) }} as QUESTION,
    {{ json_extract_scalar(adapter.quote('10359'), ['id'], ['id']) }} as ID,
    {{ json_extract_scalar(adapter.quote('10359'), ['type'], ['type']) }} as TYPE,
    {{ json_extract_scalar(adapter.quote('10359'), ['original_answer'], ['original_answer']) }} as ORIGINAL_ANSWER,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_319') }} as table_alias
-- 10359 at list_responses/survey_data/315/subquestions/319/10359
where 1 = 1
and {{ adapter.quote('10359') }} is not null

