{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_DATA_QUALITY') }}
select
    _AIRBYTE_DATA_QUALITY_HASHID,
    {{ json_extract('table_alias', 'OPENTEXT', ['gibberish'], ['gibberish']) }} as GIBBERISH,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_DATA_QUALITY') }} as table_alias
-- OPENTEXT at list_responses/data_quality/opentext
where 1 = 1
and OPENTEXT is not null

