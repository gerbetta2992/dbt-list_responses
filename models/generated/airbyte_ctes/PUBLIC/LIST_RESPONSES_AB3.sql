{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    unique_key = '_AIRBYTE_AB_ID',
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "top-level-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        'COUNTRY',
        'REFERER',
        'DATE_SUBMITTED',
        'CITY',
        object_to_string('SURVEY_DATA'),
        'LATITUDE',
        object_to_string('DATA_QUALITY'),
        object_to_string('URL_VARIABLES'),
        'SESSION_ID',
        'LANGUAGE',
        'IP_ADDRESS',
        'CONTACT_ID',
        'LINK_ID',
        'DMA',
        'IS_TEST_DATA',
        'RESPONSE_TIME',
        'ID',
        'POSTAL',
        'REGION',
        'USER_AGENT',
        'DATE_STARTED',
        'STATUS',
        'LONGITUDE',
    ]) }} as _AIRBYTE_LIST_RESPONSES_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_AB2') }} tmp
-- LIST_RESPONSES
where 1 = 1

