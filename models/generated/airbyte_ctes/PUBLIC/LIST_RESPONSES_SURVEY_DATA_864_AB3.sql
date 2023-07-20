{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_864_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_SURVEY_DATA_HASHID',
        'PARENT',
        boolean_to_string('SHOWN'),
        'QUESTION',
        'SECTION_ID',
        'ID',
        'TYPE',
    ]) }} as _AIRBYTE_864_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_SURVEY_DATA_864_AB2') }} tmp
-- 864 at list_responses/survey_data/864
where 1 = 1

