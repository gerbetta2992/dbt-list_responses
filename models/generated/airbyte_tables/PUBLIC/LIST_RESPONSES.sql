{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    unique_key = '_AIRBYTE_AB_ID',
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_SCD'
                        )
                    %}
                    {%
                        if scd_table_relation is not none
                    %}
                    {%
                            do adapter.drop_relation(scd_table_relation)
                    %}
                    {% endif %}
                        "],
    tags = [ "top-level" ]
) }}
-- Final base SQL model
-- depends_on: {{ ref('LIST_RESPONSES_AB3') }}
select
    COUNTRY,
    REFERER,
    DATE_SUBMITTED,
    CITY,
    SURVEY_DATA,
    LATITUDE,
    DATA_QUALITY,
    URL_VARIABLES,
    SESSION_ID,
    LANGUAGE,
    IP_ADDRESS,
    CONTACT_ID,
    LINK_ID,
    DMA,
    IS_TEST_DATA,
    RESPONSE_TIME,
    ID,
    POSTAL,
    REGION,
    USER_AGENT,
    DATE_STARTED,
    STATUS,
    LONGITUDE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_LIST_RESPONSES_HASHID
from {{ ref('LIST_RESPONSES_AB3') }}
-- LIST_RESPONSES from {{ source('PUBLIC', '_AIRBYTE_RAW_LIST_RESPONSES') }}
where 1 = 1

