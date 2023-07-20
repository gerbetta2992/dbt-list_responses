{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_URL_VARIABLES_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_LIST_RESPONSES_HASHID',
        object_to_string('__MESSAGEID'),
        object_to_string('SGUID'),
        object_to_string('__CONTACT'),
        object_to_string('_PRIVATEDOMAIN'),
        object_to_string('__PATHDATA'),
    ]) }} as _AIRBYTE_URL_VARIABLES_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_URL_VARIABLES_AB2') }} tmp
-- URL_VARIABLES at list_responses/url_variables
where 1 = 1

