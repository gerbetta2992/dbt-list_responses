{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_808_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_808_AB3') }}
select
    _AIRBYTE_SUBQUESTIONS_HASHID,
    {{ adapter.quote('11845') }},
    {{ adapter.quote('11846') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_808_HASHID
from {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS_808_AB3') }}
-- 808 at list_responses/survey_data/806/subquestions/808 from {{ ref('LIST_RESPONSES_SURVEY_DATA_806_SUBQUESTIONS') }}
where 1 = 1

