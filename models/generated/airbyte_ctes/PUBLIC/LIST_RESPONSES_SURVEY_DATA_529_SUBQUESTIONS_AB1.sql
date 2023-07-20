{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_529') }}
select
    _AIRBYTE_529_HASHID,
    {{ json_extract('table_alias', 'SUBQUESTIONS', ['530'], ['530']) }} as {{ adapter.quote('530') }},
    {{ json_extract('table_alias', 'SUBQUESTIONS', ['531'], ['531']) }} as {{ adapter.quote('531') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_529') }} as table_alias
-- SUBQUESTIONS at list_responses/survey_data/529/subquestions
where 1 = 1
and SUBQUESTIONS is not null

