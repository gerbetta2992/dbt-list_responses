{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_DATA_QUALITY_OPENTEXT_GIBBERISH_AB1') }}
select
    _AIRBYTE_OPENTEXT_HASHID,
    cast({{ adapter.quote('331') }} as {{ dbt_utils.type_float() }}) as {{ adapter.quote('331') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_DATA_QUALITY_OPENTEXT_GIBBERISH_AB1') }}
-- GIBBERISH at list_responses/data_quality/opentext/gibberish
where 1 = 1

