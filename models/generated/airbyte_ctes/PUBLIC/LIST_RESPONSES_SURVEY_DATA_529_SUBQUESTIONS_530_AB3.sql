{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_530_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_SUBQUESTIONS_HASHID',
        object_to_string(adapter.quote('10851')),
        object_to_string(adapter.quote('10850')),
    ]) }} as _AIRBYTE_530_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_530_AB2') }} tmp
-- 530 at list_responses/survey_data/529/subquestions/530
where 1 = 1

