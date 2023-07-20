{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES') }}
select
    _AIRBYTE_LIST_RESPONSES_HASHID,
    {{ json_extract('table_alias', 'DATA_QUALITY', ['opentext'], ['opentext']) }} as OPENTEXT,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES') }} as table_alias
-- DATA_QUALITY at list_responses/data_quality
where 1 = 1
and DATA_QUALITY is not null

