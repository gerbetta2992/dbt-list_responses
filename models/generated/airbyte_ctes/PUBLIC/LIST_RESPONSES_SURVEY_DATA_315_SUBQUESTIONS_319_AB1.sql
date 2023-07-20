{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    {{ json_extract('table_alias', adapter.quote('319'), ['10359'], ['10359']) }} as {{ adapter.quote('10359') }},
    {{ json_extract('table_alias', adapter.quote('319'), ['10358'], ['10358']) }} as {{ adapter.quote('10358') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS') }} as table_alias
-- 319 at list_responses/survey_data/315/subquestions/319
where 1 = 1
and {{ adapter.quote('319') }} is not null

