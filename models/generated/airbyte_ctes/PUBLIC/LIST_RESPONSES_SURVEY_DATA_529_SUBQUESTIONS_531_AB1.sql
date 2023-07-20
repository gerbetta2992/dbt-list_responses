{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    {{ json_extract('table_alias', adapter.quote('531'), ['10851'], ['10851']) }} as {{ adapter.quote('10851') }},
    {{ json_extract('table_alias', adapter.quote('531'), ['10850'], ['10850']) }} as {{ adapter.quote('10850') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS') }} as table_alias
-- 531 at list_responses/survey_data/529/subquestions/531
where 1 = 1
and {{ adapter.quote('531') }} is not null

