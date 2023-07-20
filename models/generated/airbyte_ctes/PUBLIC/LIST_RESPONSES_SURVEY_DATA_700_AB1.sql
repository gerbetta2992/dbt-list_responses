{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA') }}
select
    _AIRBYTE_SURVEY_DATA_HASHID,
    {{ json_extract_scalar(adapter.quote('700'), ['parent'], ['parent']) }} as PARENT,
    {{ json_extract_scalar(adapter.quote('700'), ['shown'], ['shown']) }} as SHOWN,
    {{ json_extract_scalar(adapter.quote('700'), ['question'], ['question']) }} as QUESTION,
    {{ json_extract_scalar(adapter.quote('700'), ['section_id'], ['section_id']) }} as SECTION_ID,
    {{ json_extract_scalar(adapter.quote('700'), ['id'], ['id']) }} as ID,
    {{ json_extract_scalar(adapter.quote('700'), ['type'], ['type']) }} as TYPE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA') }} as table_alias
-- 700 at list_responses/survey_data/700
where 1 = 1
and {{ adapter.quote('700') }} is not null

