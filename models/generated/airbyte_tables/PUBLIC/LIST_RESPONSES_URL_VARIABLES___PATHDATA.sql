{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_URL_VARIABLES___PATHDATA_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_URL_VARIABLES___PATHDATA_AB3') }}
select
    _AIRBYTE_URL_VARIABLES_HASHID,
    TYPE,
    VALUE,
    KEY,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE___PATHDATA_HASHID
from {{ ref('LIST_RESPONSES_URL_VARIABLES___PATHDATA_AB3') }}
-- __PATHDATA at list_responses/url_variables/__pathdata from {{ ref('LIST_RESPONSES_URL_VARIABLES') }}
where 1 = 1

