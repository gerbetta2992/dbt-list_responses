{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_URL_VARIABLES_AB1') }}
select
    _AIRBYTE_LIST_RESPONSES_HASHID,
    cast(__MESSAGEID as {{ type_json() }}) as __MESSAGEID,
    cast(SGUID as {{ type_json() }}) as SGUID,
    cast(__CONTACT as {{ type_json() }}) as __CONTACT,
    cast(_PRIVATEDOMAIN as {{ type_json() }}) as _PRIVATEDOMAIN,
    cast(__PATHDATA as {{ type_json() }}) as __PATHDATA,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_URL_VARIABLES_AB1') }}
-- URL_VARIABLES at list_responses/url_variables
where 1 = 1

