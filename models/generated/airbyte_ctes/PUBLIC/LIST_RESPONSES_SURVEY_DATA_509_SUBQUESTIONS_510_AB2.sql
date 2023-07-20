{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_509_SUBQUESTIONS_510_AB1') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    cast({{ adapter.quote('10734') }} as {{ type_json() }}) as {{ adapter.quote('10734') }},
    cast({{ adapter.quote('10735') }} as {{ type_json() }}) as {{ adapter.quote('10735') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_509_SUBQUESTIONS_510_AB1') }}
-- 510 at list_responses/survey_data/509/subquestions/510
where 1 = 1

