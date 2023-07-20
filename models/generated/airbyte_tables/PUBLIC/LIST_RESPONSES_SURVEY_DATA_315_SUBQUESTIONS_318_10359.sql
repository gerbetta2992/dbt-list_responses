{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_318_10359_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_318_10359_AB3') }}
select
    _AIRBYTE_318_HASHID,
    PARENT,
    SHOWN,
    ANSWER,
    QUESTION,
    ID,
    TYPE,
    ORIGINAL_ANSWER,
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_10359_HASHID
from {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_318_10359_AB3') }}
-- 10359 at list_responses/survey_data/315/subquestions/318/10359 from {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_318') }}
where 1 = 1

