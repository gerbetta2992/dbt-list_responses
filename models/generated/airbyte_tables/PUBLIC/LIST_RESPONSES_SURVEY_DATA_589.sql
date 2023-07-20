{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_SURVEY_DATA_589_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_589_AB3') }}
select
    _AIRBYTE_SURVEY_DATA_HASHID,
    SHOWN,
    QUESTION,
    SECTION_ID,
    ID,
    TYPE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_589_HASHID
from {{ ref('LIST_RESPONSES_SURVEY_DATA_589_AB3') }}
-- 589 at list_responses/survey_data/589 from {{ ref('LIST_RESPONSES_SURVEY_DATA') }}
where 1 = 1

