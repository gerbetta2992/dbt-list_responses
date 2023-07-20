{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_509_SUBQUESTIONS') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    {{ json_extract('table_alias', adapter.quote('510'), ['10734'], ['10734']) }} as {{ adapter.quote('10734') }},
    {{ json_extract('table_alias', adapter.quote('510'), ['10735'], ['10735']) }} as {{ adapter.quote('10735') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_509_SUBQUESTIONS') }} as table_alias
-- 510 at list_responses/survey_data/509/subquestions/510
where 1 = 1
and {{ adapter.quote('510') }} is not null

