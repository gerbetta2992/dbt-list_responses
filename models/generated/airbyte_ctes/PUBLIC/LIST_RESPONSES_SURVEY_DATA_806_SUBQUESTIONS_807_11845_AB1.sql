{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_807') }}
select
    _AIRBYTE_807_HASHID,
    {{ json_extract_scalar(adapter.quote('11845'), ['parent'], ['parent']) }} as PARENT,
    {{ json_extract_scalar(adapter.quote('11845'), ['shown'], ['shown']) }} as SHOWN,
    {{ json_extract('table_alias', adapter.quote('11845'), ['answer']) }} as ANSWER,
    {{ json_extract_scalar(adapter.quote('11845'), ['question'], ['question']) }} as QUESTION,
    {{ json_extract_scalar(adapter.quote('11845'), ['id'], ['id']) }} as ID,
    {{ json_extract_scalar(adapter.quote('11845'), ['type'], ['type']) }} as TYPE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_807') }} as table_alias
-- 11845 at list_responses/survey_data/806/subquestions/807/11845
where 1 = 1
and {{ adapter.quote('11845') }} is not null

