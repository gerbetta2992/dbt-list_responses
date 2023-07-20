{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_319_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_319_AB3') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    {{ adapter.quote('10359') }},
    {{ adapter.quote('10358') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_319_HASHID
from {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS_319_AB3') }}
-- 319 at list_responses/survey_data/315/subquestions/319 from {{ ref('LIST_RESPONSES_SURVEY_DATA_315_SUBQUESTIONS') }}
where 1 = 1

