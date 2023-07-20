{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_318_AB1') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    cast({{ adapter.quote('10359') }} as {{ type_json() }}) as {{ adapter.quote('10359') }},
    cast({{ adapter.quote('10358') }} as {{ type_json() }}) as {{ adapter.quote('10358') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_318_AB1') }}
-- 318 at list_responses/survey_data/315/subquestions/318
where 1 = 1

