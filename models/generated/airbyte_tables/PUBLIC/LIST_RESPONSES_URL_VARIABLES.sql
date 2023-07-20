{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_URL_VARIABLES_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_URL_VARIABLES_AB3') }}
select
    _AIRBYTE_LIST_RESPONSES_HASHID,
    __MESSAGEID,
    SGUID,
    __CONTACT,
    _PRIVATEDOMAIN,
    __PATHDATA,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_URL_VARIABLES_HASHID
from {{ ref('LIST_RESPONSES_URL_VARIABLES_AB3') }}
-- URL_VARIABLES at list_responses/url_variables from {{ ref('LIST_RESPONSES') }}
where 1 = 1

