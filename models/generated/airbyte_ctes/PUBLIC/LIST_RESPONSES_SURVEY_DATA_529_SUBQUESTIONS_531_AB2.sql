{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_531_AB1') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    cast({{ adapter.quote('10851') }} as {{ type_json() }}) as {{ adapter.quote('10851') }},
    cast({{ adapter.quote('10850') }} as {{ type_json() }}) as {{ adapter.quote('10850') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_531_AB1') }}
-- 531 at list_responses/survey_data/529/subquestions/531
where 1 = 1

