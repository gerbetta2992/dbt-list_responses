{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('LIST_RESPONSES_DATA_QUALITY_OPENTEXT_AB2') }}
select
    {{ dbt_utils.surrogate_key([
        '_AIRBYTE_DATA_QUALITY_HASHID',
        object_to_string('GIBBERISH'),
    ]) }} as _AIRBYTE_OPENTEXT_HASHID,
    tmp.*
from {{ ref('LIST_RESPONSES_DATA_QUALITY_OPENTEXT_AB2') }} tmp
-- OPENTEXT at list_responses/data_quality/opentext
where 1 = 1

