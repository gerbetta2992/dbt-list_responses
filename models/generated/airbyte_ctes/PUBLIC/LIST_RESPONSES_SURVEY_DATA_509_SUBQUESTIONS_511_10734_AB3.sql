{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_509_SUBQUESTIONS_511_10734_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_511_HASHID',
        'PARENT',
        boolean_to_string('SHOWN'),
        'ANSWER',
        'QUESTION',
        'ID',
        'TYPE',
    ]) }} as _AIRBYTE_10734_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_SURVEY_DATA_509_SUBQUESTIONS_511_10734_AB2') }} tmp
-- 10734 at list_responses/survey_data/509/subquestions/511/10734
where 1 = 1

