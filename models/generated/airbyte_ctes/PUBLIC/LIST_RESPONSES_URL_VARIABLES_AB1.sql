{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES') }}
select
    _AIRBYTE_LIST_RESPONSES_HASHID,
    {{ json_extract('table_alias', 'URL_VARIABLES', ['__messageid'], ['__messageid']) }} as __MESSAGEID,
    {{ json_extract('table_alias', 'URL_VARIABLES', ['sguid'], ['sguid']) }} as SGUID,
    {{ json_extract('table_alias', 'URL_VARIABLES', ['__contact'], ['__contact']) }} as __CONTACT,
    {{ json_extract('table_alias', 'URL_VARIABLES', ['_privatedomain'], ['_privatedomain']) }} as _PRIVATEDOMAIN,
    {{ json_extract('table_alias', 'URL_VARIABLES', ['__pathdata'], ['__pathdata']) }} as __PATHDATA,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES') }} as table_alias
-- URL_VARIABLES at list_responses/url_variables
where 1 = 1
and URL_VARIABLES is not null

