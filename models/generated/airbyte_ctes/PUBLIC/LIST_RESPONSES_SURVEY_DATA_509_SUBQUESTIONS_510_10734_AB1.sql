{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_509_SUBQUESTIONS_510') }}
select
    _AIRBYTE_510_HASHID,
    {{ json_extract_scalar(adapter.quote('10734'), ['parent'], ['parent']) }} as PARENT,
    {{ json_extract_scalar(adapter.quote('10734'), ['shown'], ['shown']) }} as SHOWN,
    {{ json_extract('table_alias', adapter.quote('10734'), ['answer']) }} as ANSWER,
    {{ json_extract_scalar(adapter.quote('10734'), ['question'], ['question']) }} as QUESTION,
    {{ json_extract_scalar(adapter.quote('10734'), ['id'], ['id']) }} as ID,
    {{ json_extract_scalar(adapter.quote('10734'), ['type'], ['type']) }} as TYPE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_509_SUBQUESTIONS_510') }} as table_alias
-- 10734 at list_responses/survey_data/509/subquestions/510/10734
where 1 = 1
and {{ adapter.quote('10734') }} is not null

