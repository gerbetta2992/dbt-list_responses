{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_807_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_SUBQUESTIONS_HASHID',
        object_to_string(adapter.quote('11845')),
        object_to_string(adapter.quote('11846')),
    ]) }} as _AIRBYTE_807_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_807_AB2') }} tmp
-- 807 at list_responses/survey_data/806/subquestions/807
where 1 = 1

