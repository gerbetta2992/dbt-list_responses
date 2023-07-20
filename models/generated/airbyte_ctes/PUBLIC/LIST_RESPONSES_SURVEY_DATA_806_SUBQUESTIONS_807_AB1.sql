{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    {{ json_extract('table_alias', adapter.quote('807'), ['11845'], ['11845']) }} as {{ adapter.quote('11845') }},
    {{ json_extract('table_alias', adapter.quote('807'), ['11846'], ['11846']) }} as {{ adapter.quote('11846') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS') }} as table_alias
-- 807 at list_responses/survey_data/806/subquestions/807
where 1 = 1
and {{ adapter.quote('807') }} is not null

