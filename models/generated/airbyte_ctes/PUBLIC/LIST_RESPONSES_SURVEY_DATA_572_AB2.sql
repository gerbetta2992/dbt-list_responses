{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_572_AB1') }}
select
    _AIRBYTE_SURVEY_DATA_HASHID,
    cast(PARENT as {{ dbt_utils.type_float() }}) as PARENT,
    {{ cast_to_boolean('SHOWN') }} as SHOWN,
    cast(QUESTION as {{ dbt_utils.type_string() }}) as QUESTION,
    cast(SECTION_ID as {{ dbt_utils.type_float() }}) as SECTION_ID,
    cast(ID as {{ dbt_utils.type_float() }}) as ID,
    cast(TYPE as {{ dbt_utils.type_string() }}) as TYPE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_572_AB1') }}
-- 572 at list_responses/survey_data/572
where 1 = 1

