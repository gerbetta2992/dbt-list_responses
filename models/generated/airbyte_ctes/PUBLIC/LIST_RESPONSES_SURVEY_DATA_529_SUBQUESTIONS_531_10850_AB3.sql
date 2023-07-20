{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_531_10850_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_531_HASHID',
        'PARENT',
        boolean_to_string('SHOWN'),
        'ANSWER',
        'QUESTION',
        'ID',
        'TYPE',
    ]) }} as _AIRBYTE_10850_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_531_10850_AB2') }} tmp
-- 10850 at list_responses/survey_data/529/subquestions/531/10850
where 1 = 1

