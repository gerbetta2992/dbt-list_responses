{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_DATA_QUALITY_OPENTEXT') }}
select
    _AIRBYTE_OPENTEXT_HASHID,
    {{ json_extract_scalar('GIBBERISH', ['331'], ['331']) }} as {{ adapter.quote('331') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_DATA_QUALITY_OPENTEXT') }} as table_alias
-- GIBBERISH at list_responses/data_quality/opentext/gibberish
where 1 = 1
and GIBBERISH is not null

