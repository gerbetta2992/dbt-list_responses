{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_URL_VARIABLES___PATHDATA_AB1') }}
select
    _AIRBYTE_URL_VARIABLES_HASHID,
    cast(TYPE as {{ dbt_utils.type_string() }}) as TYPE,
    cast(VALUE as {{ dbt_utils.type_string() }}) as VALUE,
    cast(KEY as {{ dbt_utils.type_string() }}) as KEY,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_URL_VARIABLES___PATHDATA_AB1') }}
-- __PATHDATA at list_responses/url_variables/__pathdata
where 1 = 1

