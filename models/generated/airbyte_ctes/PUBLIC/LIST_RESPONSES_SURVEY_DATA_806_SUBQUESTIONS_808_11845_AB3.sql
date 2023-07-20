{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_808_11845_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_808_HASHID',
        'PARENT',
        boolean_to_string('SHOWN'),
        'ANSWER',
        'QUESTION',
        'ID',
        'TYPE',
    ]) }} as _AIRBYTE_11845_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_808_11845_AB2') }} tmp
-- 11845 at list_responses/survey_data/806/subquestions/808/11845
where 1 = 1

