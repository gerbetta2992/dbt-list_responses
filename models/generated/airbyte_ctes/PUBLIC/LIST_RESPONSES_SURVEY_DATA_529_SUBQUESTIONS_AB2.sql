{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_AB1') }}
select
    _AIRBYTE_529_HASHID,
    cast({{ adapter.quote('530') }} as {{ type_json() }}) as {{ adapter.quote('530') }},
    cast({{ adapter.quote('531') }} as {{ type_json() }}) as {{ adapter.quote('531') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_AB1') }}
-- SUBQUESTIONS at list_responses/survey_data/529/subquestions
where 1 = 1

