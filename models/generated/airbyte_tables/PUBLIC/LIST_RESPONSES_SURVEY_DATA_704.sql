{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_SURVEY_DATA_704_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_704_AB3') }}
select
    _AIRBYTE_SURVEY_DATA_HASHID,
    PARENT,
    SHOWN,
    QUESTION,
    SECTION_ID,
    ID,
    TYPE,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_704_HASHID
from {{ ref('LIST_RESPONSES_SURVEY_DATA_704_AB3') }}
-- 704 at list_responses/survey_data/704 from {{ ref('LIST_RESPONSES_SURVEY_DATA') }}
where 1 = 1

