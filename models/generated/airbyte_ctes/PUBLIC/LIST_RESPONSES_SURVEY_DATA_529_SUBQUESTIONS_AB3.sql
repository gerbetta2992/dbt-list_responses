{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_529_HASHID',
        object_to_string(adapter.quote('530')),
        object_to_string(adapter.quote('531')),
    ]) }} as _AIRBYTE_SUBQUESTIONS_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_AB2') }} tmp
-- SUBQUESTIONS at list_responses/survey_data/529/subquestions
where 1 = 1

