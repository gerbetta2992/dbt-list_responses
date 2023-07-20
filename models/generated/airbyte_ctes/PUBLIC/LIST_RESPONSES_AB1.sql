{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    unique_key = '_AIRBYTE_AB_ID',
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "top-level-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ source('PUBLIC', '_AIRBYTE_RAW_LIST_RESPONSES') }}
select
    {{ json_extract_scalar('_airbyte_data', ['country'], ['country']) }} as COUNTRY,
    {{ json_extract_scalar('_airbyte_data', ['referer'], ['referer']) }} as REFERER,
    {{ json_extract_scalar('_airbyte_data', ['date_submitted'], ['date_submitted']) }} as DATE_SUBMITTED,
    {{ json_extract_scalar('_airbyte_data', ['city'], ['city']) }} as CITY,
    {{ json_extract('table_alias', '_airbyte_data', ['survey_data'], ['survey_data']) }} as SURVEY_DATA,
    {{ json_extract_scalar('_airbyte_data', ['latitude'], ['latitude']) }} as LATITUDE,
    {{ json_extract('table_alias', '_airbyte_data', ['data_quality'], ['data_quality']) }} as DATA_QUALITY,
    {{ json_extract('table_alias', '_airbyte_data', ['url_variables'], ['url_variables']) }} as URL_VARIABLES,
    {{ json_extract_scalar('_airbyte_data', ['session_id'], ['session_id']) }} as SESSION_ID,
    {{ json_extract_scalar('_airbyte_data', ['language'], ['language']) }} as LANGUAGE,
    {{ json_extract_scalar('_airbyte_data', ['ip_address'], ['ip_address']) }} as IP_ADDRESS,
    {{ json_extract_scalar('_airbyte_data', ['contact_id'], ['contact_id']) }} as CONTACT_ID,
    {{ json_extract_scalar('_airbyte_data', ['link_id'], ['link_id']) }} as LINK_ID,
    {{ json_extract_scalar('_airbyte_data', ['dma'], ['dma']) }} as DMA,
    {{ json_extract_scalar('_airbyte_data', ['is_test_data'], ['is_test_data']) }} as IS_TEST_DATA,
    {{ json_extract_scalar('_airbyte_data', ['response_time'], ['response_time']) }} as RESPONSE_TIME,
    {{ json_extract_scalar('_airbyte_data', ['id'], ['id']) }} as ID,
    {{ json_extract_scalar('_airbyte_data', ['postal'], ['postal']) }} as POSTAL,
    {{ json_extract_scalar('_airbyte_data', ['region'], ['region']) }} as REGION,
    {{ json_extract_scalar('_airbyte_data', ['user_agent'], ['user_agent']) }} as USER_AGENT,
    {{ json_extract_scalar('_airbyte_data', ['date_started'], ['date_started']) }} as DATE_STARTED,
    {{ json_extract_scalar('_airbyte_data', ['status'], ['status']) }} as STATUS,
    {{ json_extract_scalar('_airbyte_data', ['longitude'], ['longitude']) }} as LONGITUDE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ source('PUBLIC', '_AIRBYTE_RAW_LIST_RESPONSES') }} as table_alias
-- LIST_RESPONSES
where 1 = 1

