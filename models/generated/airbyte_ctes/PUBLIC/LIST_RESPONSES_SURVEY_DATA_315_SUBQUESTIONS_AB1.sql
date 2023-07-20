{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_315') }}
select
    _AIRBYTE_315_HASHID,
    {{ json_extract('table_alias', 'SUBQUESTIONS', ['318'], ['318']) }} as {{ adapter.quote('318') }},
    {{ json_extract('table_alias', 'SUBQUESTIONS', ['319'], ['319']) }} as {{ adapter.quote('319') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_315') }} as table_alias
-- SUBQUESTIONS at list_responses/survey_data/315/subquestions
where 1 = 1
and SUBQUESTIONS is not null

