{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_URL_VARIABLES_SGUID_SCD'
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
    tags = [ "nested" ]
) }}
-- Final base SQL model
-- depends_on: {{ ref('LIST_RESPONSES_URL_VARIABLES_SGUID_AB3') }}
select
    _AIRBYTE_URL_VARIABLES_HASHID,
    TYPE,
    VALUE,
    KEY,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_SGUID_HASHID
from {{ ref('LIST_RESPONSES_URL_VARIABLES_SGUID_AB3') }}
-- SGUID at list_responses/url_variables/sguid from {{ ref('LIST_RESPONSES_URL_VARIABLES') }}
where 1 = 1

