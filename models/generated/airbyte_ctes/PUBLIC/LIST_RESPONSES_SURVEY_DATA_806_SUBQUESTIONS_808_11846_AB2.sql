{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_808_11846_AB1') }}
select
    _AIRBYTE_808_HASHID,
    cast(PARENT as {{ dbt_utils.type_float() }}) as PARENT,
    {{ cast_to_boolean('SHOWN') }} as SHOWN,
    ANSWER,
    cast(QUESTION as {{ dbt_utils.type_string() }}) as QUESTION,
    cast(ID as {{ dbt_utils.type_float() }}) as ID,
    cast(TYPE as {{ dbt_utils.type_string() }}) as TYPE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_808_11846_AB1') }}
-- 11846 at list_responses/survey_data/806/subquestions/808/11846
where 1 = 1

