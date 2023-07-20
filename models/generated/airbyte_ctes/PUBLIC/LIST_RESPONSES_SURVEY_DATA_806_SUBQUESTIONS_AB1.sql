{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_806') }}
select
    _AIRBYTE_806_HASHID,
    {{ json_extract('table_alias', 'SUBQUESTIONS', ['808'], ['808']) }} as {{ adapter.quote('808') }},
    {{ json_extract('table_alias', 'SUBQUESTIONS', ['807'], ['807']) }} as {{ adapter.quote('807') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_806') }} as table_alias
-- SUBQUESTIONS at list_responses/survey_data/806/subquestions
where 1 = 1
and SUBQUESTIONS is not null

