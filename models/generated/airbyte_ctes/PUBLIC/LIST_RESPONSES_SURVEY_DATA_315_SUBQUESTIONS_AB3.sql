{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_315_HASHID',
        object_to_string(adapter.quote('318')),
        object_to_string(adapter.quote('319')),
    ]) }} as _AIRBYTE_SUBQUESTIONS_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_AB2') }} tmp
-- SUBQUESTIONS at list_responses/survey_data/315/subquestions
where 1 = 1

