{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_URL_VARIABLES') }}
select
    _AIRBYTE_URL_VARIABLES_HASHID,
    {{ json_extract_scalar('__MESSAGEID', ['type'], ['type']) }} as TYPE,
    {{ json_extract_scalar('__MESSAGEID', ['value'], ['value']) }} as VALUE,
    {{ json_extract_scalar('__MESSAGEID', ['key'], ['key']) }} as KEY,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_URL_VARIABLES') }} as table_alias
-- __MESSAGEID at list_responses/url_variables/__messageid
where 1 = 1
and __MESSAGEID is not null

