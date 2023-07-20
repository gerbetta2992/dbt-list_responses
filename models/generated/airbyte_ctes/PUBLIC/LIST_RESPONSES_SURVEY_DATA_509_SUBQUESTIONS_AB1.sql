{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_509') }}
select
    _AIRBYTE_509_HASHID,
    {{ json_extract('table_alias', 'SUBQUESTIONS', ['510'], ['510']) }} as {{ adapter.quote('510') }},
    {{ json_extract('table_alias', 'SUBQUESTIONS', ['511'], ['511']) }} as {{ adapter.quote('511') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_509') }} as table_alias
-- SUBQUESTIONS at list_responses/survey_data/509/subquestions
where 1 = 1
and SUBQUESTIONS is not null

