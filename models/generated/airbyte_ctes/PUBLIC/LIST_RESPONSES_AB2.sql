{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    unique_key = '_AIRBYTE_AB_ID',
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "top-level-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_AB1') }}
select
    cast(COUNTRY as {{ dbt_utils.type_string() }}) as COUNTRY,
    cast(REFERER as {{ dbt_utils.type_string() }}) as REFERER,
    cast(DATE_SUBMITTED as {{ dbt_utils.type_string() }}) as DATE_SUBMITTED,
    cast(CITY as {{ dbt_utils.type_string() }}) as CITY,
    cast(SURVEY_DATA as {{ type_json() }}) as SURVEY_DATA,
    cast(LATITUDE as {{ dbt_utils.type_string() }}) as LATITUDE,
    cast(DATA_QUALITY as {{ type_json() }}) as DATA_QUALITY,
    cast(URL_VARIABLES as {{ type_json() }}) as URL_VARIABLES,
    cast(SESSION_ID as {{ dbt_utils.type_string() }}) as SESSION_ID,
    cast(LANGUAGE as {{ dbt_utils.type_string() }}) as LANGUAGE,
    cast(IP_ADDRESS as {{ dbt_utils.type_string() }}) as IP_ADDRESS,
    cast(CONTACT_ID as {{ dbt_utils.type_string() }}) as CONTACT_ID,
    cast(LINK_ID as {{ dbt_utils.type_string() }}) as LINK_ID,
    cast(DMA as {{ dbt_utils.type_string() }}) as DMA,
    cast(IS_TEST_DATA as {{ dbt_utils.type_string() }}) as IS_TEST_DATA,
    cast(RESPONSE_TIME as {{ dbt_utils.type_float() }}) as RESPONSE_TIME,
    cast(ID as {{ dbt_utils.type_string() }}) as ID,
    cast(POSTAL as {{ dbt_utils.type_string() }}) as POSTAL,
    cast(REGION as {{ dbt_utils.type_string() }}) as REGION,
    cast(USER_AGENT as {{ dbt_utils.type_string() }}) as USER_AGENT,
    cast(DATE_STARTED as {{ dbt_utils.type_string() }}) as DATE_STARTED,
    cast(STATUS as {{ dbt_utils.type_string() }}) as STATUS,
    cast(LONGITUDE as {{ dbt_utils.type_string() }}) as LONGITUDE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_AB1') }}
-- LIST_RESPONSES
where 1 = 1

