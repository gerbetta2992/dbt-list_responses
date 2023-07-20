{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_URL_VARIABLES_SGUID_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_URL_VARIABLES_HASHID',
        'TYPE',
        'VALUE',
        'KEY',
    ]) }} as _AIRBYTE_SGUID_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_URL_VARIABLES_SGUID_AB2') }} tmp
-- SGUID at list_responses/url_variables/sguid
where 1 = 1

