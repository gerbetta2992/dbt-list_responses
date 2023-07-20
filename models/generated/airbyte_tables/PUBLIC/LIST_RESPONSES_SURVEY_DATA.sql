{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "PUBLIC",
    post_hook = ["
                    {%
                        set scd_table_relation = adapter.get_relation(
                            database=this.database,
                            schema=this.schema,
                            identifier='LIST_RESPONSES_SURVEY_DATA_SCD'
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
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_AB3') }}
select
    _AIRBYTE_LIST_RESPONSES_HASHID,
    {{ adapter.quote('590') }},
    {{ adapter.quote('470') }},
    {{ adapter.quote('591') }},
    {{ adapter.quote('592') }},
    {{ adapter.quote('472') }},
    {{ adapter.quote('593') }},
    {{ adapter.quote('473') }},
    {{ adapter.quote('594') }},
    {{ adapter.quote('595') }},
    {{ adapter.quote('475') }},
    {{ adapter.quote('596') }},
    {{ adapter.quote('476') }},
    {{ adapter.quote('597') }},
    {{ adapter.quote('598') }},
    {{ adapter.quote('478') }},
    {{ adapter.quote('599') }},
    {{ adapter.quote('479') }},
    {{ adapter.quote('481') }},
    {{ adapter.quote('482') }},
    {{ adapter.quote('484') }},
    {{ adapter.quote('485') }},
    {{ adapter.quote('804') }},
    {{ adapter.quote('805') }},
    {{ adapter.quote('806') }},
    {{ adapter.quote('490') }},
    {{ adapter.quote('491') }},
    {{ adapter.quote('493') }},
    {{ adapter.quote('496') }},
    {{ adapter.quote('498') }},
    {{ adapter.quote('499') }},
    {{ adapter.quote('812') }},
    {{ adapter.quote('814') }},
    {{ adapter.quote('816') }},
    {{ adapter.quote('819') }},
    {{ adapter.quote('700') }},
    {{ adapter.quote('701') }},
    {{ adapter.quote('823') }},
    {{ adapter.quote('703') }},
    {{ adapter.quote('824') }},
    {{ adapter.quote('704') }},
    {{ adapter.quote('825') }},
    {{ adapter.quote('705') }},
    {{ adapter.quote('826') }},
    {{ adapter.quote('706') }},
    {{ adapter.quote('827') }},
    {{ adapter.quote('707') }},
    {{ adapter.quote('709') }},
    {{ adapter.quote('710') }},
    {{ adapter.quote('711') }},
    {{ adapter.quote('712') }},
    {{ adapter.quote('713') }},
    {{ adapter.quote('834') }},
    {{ adapter.quote('835') }},
    {{ adapter.quote('715') }},
    {{ adapter.quote('836') }},
    {{ adapter.quote('716') }},
    {{ adapter.quote('837') }},
    {{ adapter.quote('717') }},
    {{ adapter.quote('838') }},
    {{ adapter.quote('718') }},
    {{ adapter.quote('839') }},
    {{ adapter.quote('719') }},
    {{ adapter.quote('840') }},
    {{ adapter.quote('600') }},
    {{ adapter.quote('842') }},
    {{ adapter.quote('601') }},
    {{ adapter.quote('843') }},
    {{ adapter.quote('602') }},
    {{ adapter.quote('844') }},
    {{ adapter.quote('603') }},
    {{ adapter.quote('845') }},
    {{ adapter.quote('604') }},
    {{ adapter.quote('846') }},
    {{ adapter.quote('605') }},
    {{ adapter.quote('847') }},
    {{ adapter.quote('606') }},
    {{ adapter.quote('848') }},
    {{ adapter.quote('607') }},
    {{ adapter.quote('849') }},
    {{ adapter.quote('608') }},
    {{ adapter.quote('609') }},
    {{ adapter.quote('296') }},
    {{ adapter.quote('850') }},
    {{ adapter.quote('851') }},
    {{ adapter.quote('610') }},
    {{ adapter.quote('852') }},
    {{ adapter.quote('611') }},
    {{ adapter.quote('612') }},
    {{ adapter.quote('854') }},
    {{ adapter.quote('613') }},
    {{ adapter.quote('855') }},
    {{ adapter.quote('614') }},
    {{ adapter.quote('856') }},
    {{ adapter.quote('615') }},
    {{ adapter.quote('857') }},
    {{ adapter.quote('616') }},
    {{ adapter.quote('858') }},
    {{ adapter.quote('617') }},
    {{ adapter.quote('859') }},
    {{ adapter.quote('618') }},
    {{ adapter.quote('619') }},
    {{ adapter.quote('860') }},
    {{ adapter.quote('861') }},
    {{ adapter.quote('620') }},
    {{ adapter.quote('862') }},
    {{ adapter.quote('500') }},
    {{ adapter.quote('621') }},
    {{ adapter.quote('863') }},
    {{ adapter.quote('622') }},
    {{ adapter.quote('864') }},
    {{ adapter.quote('623') }},
    {{ adapter.quote('624') }},
    {{ adapter.quote('866') }},
    {{ adapter.quote('504') }},
    {{ adapter.quote('625') }},
    {{ adapter.quote('867') }},
    {{ adapter.quote('626') }},
    {{ adapter.quote('868') }},
    {{ adapter.quote('506') }},
    {{ adapter.quote('627') }},
    {{ adapter.quote('869') }},
    {{ adapter.quote('628') }},
    {{ adapter.quote('629') }},
    {{ adapter.quote('509') }},
    {{ adapter.quote('870') }},
    {{ adapter.quote('871') }},
    {{ adapter.quote('630') }},
    {{ adapter.quote('872') }},
    {{ adapter.quote('631') }},
    {{ adapter.quote('873') }},
    {{ adapter.quote('874') }},
    {{ adapter.quote('875') }},
    {{ adapter.quote('876') }},
    {{ adapter.quote('877') }},
    {{ adapter.quote('878') }},
    {{ adapter.quote('879') }},
    {{ adapter.quote('519') }},
    {{ adapter.quote('880') }},
    {{ adapter.quote('881') }},
    {{ adapter.quote('640') }},
    {{ adapter.quote('882') }},
    {{ adapter.quote('641') }},
    {{ adapter.quote('883') }},
    {{ adapter.quote('521') }},
    {{ adapter.quote('642') }},
    {{ adapter.quote('643') }},
    {{ adapter.quote('523') }},
    {{ adapter.quote('644') }},
    {{ adapter.quote('524') }},
    {{ adapter.quote('645') }},
    {{ adapter.quote('646') }},
    {{ adapter.quote('526') }},
    {{ adapter.quote('647') }},
    {{ adapter.quote('648') }},
    {{ adapter.quote('649') }},
    {{ adapter.quote('529') }},
    {{ adapter.quote('650') }},
    {{ adapter.quote('651') }},
    {{ adapter.quote('652') }},
    {{ adapter.quote('653') }},
    {{ adapter.quote('654') }},
    {{ adapter.quote('655') }},
    {{ adapter.quote('656') }},
    {{ adapter.quote('657') }},
    {{ adapter.quote('658') }},
    {{ adapter.quote('659') }},
    {{ adapter.quote('539') }},
    {{ adapter.quote('660') }},
    {{ adapter.quote('661') }},
    {{ adapter.quote('541') }},
    {{ adapter.quote('662') }},
    {{ adapter.quote('663') }},
    {{ adapter.quote('543') }},
    {{ adapter.quote('664') }},
    {{ adapter.quote('545') }},
    {{ adapter.quote('546') }},
    {{ adapter.quote('548') }},
    {{ adapter.quote('549') }},
    {{ adapter.quote('551') }},
    {{ adapter.quote('552') }},
    {{ adapter.quote('311') }},
    {{ adapter.quote('554') }},
    {{ adapter.quote('555') }},
    {{ adapter.quote('315') }},
    {{ adapter.quote('557') }},
    {{ adapter.quote('558') }},
    {{ adapter.quote('679') }},
    {{ adapter.quote('680') }},
    {{ adapter.quote('560') }},
    {{ adapter.quote('681') }},
    {{ adapter.quote('561') }},
    {{ adapter.quote('682') }},
    {{ adapter.quote('683') }},
    {{ adapter.quote('563') }},
    {{ adapter.quote('564') }},
    {{ adapter.quote('685') }},
    {{ adapter.quote('686') }},
    {{ adapter.quote('566') }},
    {{ adapter.quote('687') }},
    {{ adapter.quote('567') }},
    {{ adapter.quote('688') }},
    {{ adapter.quote('689') }},
    {{ adapter.quote('569') }},
    {{ adapter.quote('329') }},
    {{ adapter.quote('570') }},
    {{ adapter.quote('691') }},
    {{ adapter.quote('692') }},
    {{ adapter.quote('330') }},
    {{ adapter.quote('572') }},
    {{ adapter.quote('693') }},
    {{ adapter.quote('331') }},
    {{ adapter.quote('573') }},
    {{ adapter.quote('694') }},
    {{ adapter.quote('695') }},
    {{ adapter.quote('575') }},
    {{ adapter.quote('576') }},
    {{ adapter.quote('697') }},
    {{ adapter.quote('698') }},
    {{ adapter.quote('578') }},
    {{ adapter.quote('699') }},
    {{ adapter.quote('579') }},
    {{ adapter.quote('581') }},
    {{ adapter.quote('582') }},
    {{ adapter.quote('584') }},
    {{ adapter.quote('585') }},
    {{ adapter.quote('587') }},
    {{ adapter.quote('589') }},
    {{ adapter.quote('469') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT,
    _AIRBYTE_SURVEY_DATA_HASHID
from {{ ref('LIST_RESPONSES_SURVEY_DATA_AB3') }}
-- SURVEY_DATA at list_responses/survey_data from {{ ref('LIST_RESPONSES') }}
where 1 = 1
