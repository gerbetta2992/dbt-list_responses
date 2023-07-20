{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_AB3') }}
select
    _AIRBYTE_529_HASHID,
    {{ adapter.quote('530') }},
    {{ adapter.quote('531') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_SUBQUESTIONS_HASHID
from {{ ref('LIST_RESPONSES_SURVEY_DATA_529_SUBQUESTIONS_AB3') }}
-- SUBQUESTIONS at list_responses/survey_data/529/subquestions from {{ ref('LIST_RESPONSES_SURVEY_DATA_529') }}
where 1 = 1

