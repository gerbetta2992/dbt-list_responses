{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_318_10359_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_318_HASHID',
        'PARENT',
        boolean_to_string('SHOWN'),
        'ANSWER',
        'QUESTION',
        'ID',
        'TYPE',
        'ORIGINAL_ANSWER',
    ]) }} as _AIRBYTE_10359_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_318_10359_AB2') }} tmp
-- 10359 at list_responses/survey_data/315/subquestions/318/10359
where 1 = 1

