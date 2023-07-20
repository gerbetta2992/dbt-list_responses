{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_531_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_531_AB3') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    {{ adapter.quote('10851') }},
    {{ adapter.quote('10850') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_531_HASHID
from {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_531_AB3') }}
-- 531 at list_responses/survey_data/529/subquestions/531 from {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS') }}
where 1 = 1

