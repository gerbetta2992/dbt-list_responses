{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_DATA_QUALITY_OPENTEXT_GIBBERISH_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_DATA_QUALITY_OPENTEXT_GIBBERISH_AB3') }}
select
    _AIRBYTE_OPENTEXT_HASHID,
    {{ adapter.quote('331') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_GIBBERISH_HASHID
from {{ ref('LIST_RESPONSES_DATA_QUALITY_OPENTEXT_GIBBERISH_AB3') }}
-- GIBBERISH at list_responses/data_quality/opentext/gibberish from {{ ref('LIST_RESPONSES_DATA_QUALITY_OPENTEXT') }}
where 1 = 1

