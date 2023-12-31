{{ config(
    cluster_by = ["_AIRBYTE_EMITTED_AT"],
    schema = "_AIRBYTE_PUBLIC",
    tags = [ "nested-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('LIST_RESPONSES_SURVEY_DATA_AB1') }}
select
    _AIRBYTE_LIST_RESPONSES_HASHID,
    cast({{ adapter.quote('590') }} as {{ type_json() }}) as {{ adapter.quote('590') }},
    cast({{ adapter.quote('470') }} as {{ type_json() }}) as {{ adapter.quote('470') }},
    cast({{ adapter.quote('591') }} as {{ type_json() }}) as {{ adapter.quote('591') }},
    cast({{ adapter.quote('592') }} as {{ type_json() }}) as {{ adapter.quote('592') }},
    cast({{ adapter.quote('472') }} as {{ type_json() }}) as {{ adapter.quote('472') }},
    cast({{ adapter.quote('593') }} as {{ type_json() }}) as {{ adapter.quote('593') }},
    cast({{ adapter.quote('473') }} as {{ type_json() }}) as {{ adapter.quote('473') }},
    cast({{ adapter.quote('594') }} as {{ type_json() }}) as {{ adapter.quote('594') }},
    cast({{ adapter.quote('595') }} as {{ type_json() }}) as {{ adapter.quote('595') }},
    cast({{ adapter.quote('475') }} as {{ type_json() }}) as {{ adapter.quote('475') }},
    cast({{ adapter.quote('596') }} as {{ type_json() }}) as {{ adapter.quote('596') }},
    cast({{ adapter.quote('476') }} as {{ type_json() }}) as {{ adapter.quote('476') }},
    cast({{ adapter.quote('597') }} as {{ type_json() }}) as {{ adapter.quote('597') }},
    cast({{ adapter.quote('598') }} as {{ type_json() }}) as {{ adapter.quote('598') }},
    cast({{ adapter.quote('478') }} as {{ type_json() }}) as {{ adapter.quote('478') }},
    cast({{ adapter.quote('599') }} as {{ type_json() }}) as {{ adapter.quote('599') }},
    cast({{ adapter.quote('479') }} as {{ type_json() }}) as {{ adapter.quote('479') }},
    cast({{ adapter.quote('481') }} as {{ type_json() }}) as {{ adapter.quote('481') }},
    cast({{ adapter.quote('482') }} as {{ type_json() }}) as {{ adapter.quote('482') }},
    cast({{ adapter.quote('484') }} as {{ type_json() }}) as {{ adapter.quote('484') }},
    cast({{ adapter.quote('485') }} as {{ type_json() }}) as {{ adapter.quote('485') }},
    cast({{ adapter.quote('804') }} as {{ type_json() }}) as {{ adapter.quote('804') }},
    cast({{ adapter.quote('805') }} as {{ type_json() }}) as {{ adapter.quote('805') }},
    cast({{ adapter.quote('806') }} as {{ type_json() }}) as {{ adapter.quote('806') }},
    cast({{ adapter.quote('490') }} as {{ type_json() }}) as {{ adapter.quote('490') }},
    cast({{ adapter.quote('491') }} as {{ type_json() }}) as {{ adapter.quote('491') }},
    cast({{ adapter.quote('493') }} as {{ type_json() }}) as {{ adapter.quote('493') }},
    cast({{ adapter.quote('496') }} as {{ type_json() }}) as {{ adapter.quote('496') }},
    cast({{ adapter.quote('498') }} as {{ type_json() }}) as {{ adapter.quote('498') }},
    cast({{ adapter.quote('499') }} as {{ type_json() }}) as {{ adapter.quote('499') }},
    cast({{ adapter.quote('812') }} as {{ type_json() }}) as {{ adapter.quote('812') }},
    cast({{ adapter.quote('814') }} as {{ type_json() }}) as {{ adapter.quote('814') }},
    cast({{ adapter.quote('816') }} as {{ type_json() }}) as {{ adapter.quote('816') }},
    cast({{ adapter.quote('819') }} as {{ type_json() }}) as {{ adapter.quote('819') }},
    cast({{ adapter.quote('700') }} as {{ type_json() }}) as {{ adapter.quote('700') }},
    cast({{ adapter.quote('701') }} as {{ type_json() }}) as {{ adapter.quote('701') }},
    cast({{ adapter.quote('823') }} as {{ type_json() }}) as {{ adapter.quote('823') }},
    cast({{ adapter.quote('703') }} as {{ type_json() }}) as {{ adapter.quote('703') }},
    cast({{ adapter.quote('824') }} as {{ type_json() }}) as {{ adapter.quote('824') }},
    cast({{ adapter.quote('704') }} as {{ type_json() }}) as {{ adapter.quote('704') }},
    cast({{ adapter.quote('825') }} as {{ type_json() }}) as {{ adapter.quote('825') }},
    cast({{ adapter.quote('705') }} as {{ type_json() }}) as {{ adapter.quote('705') }},
    cast({{ adapter.quote('826') }} as {{ type_json() }}) as {{ adapter.quote('826') }},
    cast({{ adapter.quote('706') }} as {{ type_json() }}) as {{ adapter.quote('706') }},
    cast({{ adapter.quote('827') }} as {{ type_json() }}) as {{ adapter.quote('827') }},
    cast({{ adapter.quote('707') }} as {{ type_json() }}) as {{ adapter.quote('707') }},
    cast({{ adapter.quote('709') }} as {{ type_json() }}) as {{ adapter.quote('709') }},
    cast({{ adapter.quote('710') }} as {{ type_json() }}) as {{ adapter.quote('710') }},
    cast({{ adapter.quote('711') }} as {{ type_json() }}) as {{ adapter.quote('711') }},
    cast({{ adapter.quote('712') }} as {{ type_json() }}) as {{ adapter.quote('712') }},
    cast({{ adapter.quote('713') }} as {{ type_json() }}) as {{ adapter.quote('713') }},
    cast({{ adapter.quote('834') }} as {{ type_json() }}) as {{ adapter.quote('834') }},
    cast({{ adapter.quote('835') }} as {{ type_json() }}) as {{ adapter.quote('835') }},
    cast({{ adapter.quote('715') }} as {{ type_json() }}) as {{ adapter.quote('715') }},
    cast({{ adapter.quote('836') }} as {{ type_json() }}) as {{ adapter.quote('836') }},
    cast({{ adapter.quote('716') }} as {{ type_json() }}) as {{ adapter.quote('716') }},
    cast({{ adapter.quote('837') }} as {{ type_json() }}) as {{ adapter.quote('837') }},
    cast({{ adapter.quote('717') }} as {{ type_json() }}) as {{ adapter.quote('717') }},
    cast({{ adapter.quote('838') }} as {{ type_json() }}) as {{ adapter.quote('838') }},
    cast({{ adapter.quote('718') }} as {{ type_json() }}) as {{ adapter.quote('718') }},
    cast({{ adapter.quote('839') }} as {{ type_json() }}) as {{ adapter.quote('839') }},
    cast({{ adapter.quote('719') }} as {{ type_json() }}) as {{ adapter.quote('719') }},
    cast({{ adapter.quote('840') }} as {{ type_json() }}) as {{ adapter.quote('840') }},
    cast({{ adapter.quote('600') }} as {{ type_json() }}) as {{ adapter.quote('600') }},
    cast({{ adapter.quote('842') }} as {{ type_json() }}) as {{ adapter.quote('842') }},
    cast({{ adapter.quote('601') }} as {{ type_json() }}) as {{ adapter.quote('601') }},
    cast({{ adapter.quote('843') }} as {{ type_json() }}) as {{ adapter.quote('843') }},
    cast({{ adapter.quote('602') }} as {{ type_json() }}) as {{ adapter.quote('602') }},
    cast({{ adapter.quote('844') }} as {{ type_json() }}) as {{ adapter.quote('844') }},
    cast({{ adapter.quote('603') }} as {{ type_json() }}) as {{ adapter.quote('603') }},
    cast({{ adapter.quote('845') }} as {{ type_json() }}) as {{ adapter.quote('845') }},
    cast({{ adapter.quote('604') }} as {{ type_json() }}) as {{ adapter.quote('604') }},
    cast({{ adapter.quote('846') }} as {{ type_json() }}) as {{ adapter.quote('846') }},
    cast({{ adapter.quote('605') }} as {{ type_json() }}) as {{ adapter.quote('605') }},
    cast({{ adapter.quote('847') }} as {{ type_json() }}) as {{ adapter.quote('847') }},
    cast({{ adapter.quote('606') }} as {{ type_json() }}) as {{ adapter.quote('606') }},
    cast({{ adapter.quote('848') }} as {{ type_json() }}) as {{ adapter.quote('848') }},
    cast({{ adapter.quote('607') }} as {{ type_json() }}) as {{ adapter.quote('607') }},
    cast({{ adapter.quote('849') }} as {{ type_json() }}) as {{ adapter.quote('849') }},
    cast({{ adapter.quote('608') }} as {{ type_json() }}) as {{ adapter.quote('608') }},
    cast({{ adapter.quote('609') }} as {{ type_json() }}) as {{ adapter.quote('609') }},
    cast({{ adapter.quote('296') }} as {{ type_json() }}) as {{ adapter.quote('296') }},
    cast({{ adapter.quote('850') }} as {{ type_json() }}) as {{ adapter.quote('850') }},
    cast({{ adapter.quote('851') }} as {{ type_json() }}) as {{ adapter.quote('851') }},
    cast({{ adapter.quote('610') }} as {{ type_json() }}) as {{ adapter.quote('610') }},
    cast({{ adapter.quote('852') }} as {{ type_json() }}) as {{ adapter.quote('852') }},
    cast({{ adapter.quote('611') }} as {{ type_json() }}) as {{ adapter.quote('611') }},
    cast({{ adapter.quote('612') }} as {{ type_json() }}) as {{ adapter.quote('612') }},
    cast({{ adapter.quote('854') }} as {{ type_json() }}) as {{ adapter.quote('854') }},
    cast({{ adapter.quote('613') }} as {{ type_json() }}) as {{ adapter.quote('613') }},
    cast({{ adapter.quote('855') }} as {{ type_json() }}) as {{ adapter.quote('855') }},
    cast({{ adapter.quote('614') }} as {{ type_json() }}) as {{ adapter.quote('614') }},
    cast({{ adapter.quote('856') }} as {{ type_json() }}) as {{ adapter.quote('856') }},
    cast({{ adapter.quote('615') }} as {{ type_json() }}) as {{ adapter.quote('615') }},
    cast({{ adapter.quote('857') }} as {{ type_json() }}) as {{ adapter.quote('857') }},
    cast({{ adapter.quote('616') }} as {{ type_json() }}) as {{ adapter.quote('616') }},
    cast({{ adapter.quote('858') }} as {{ type_json() }}) as {{ adapter.quote('858') }},
    cast({{ adapter.quote('617') }} as {{ type_json() }}) as {{ adapter.quote('617') }},
    cast({{ adapter.quote('859') }} as {{ type_json() }}) as {{ adapter.quote('859') }},
    cast({{ adapter.quote('618') }} as {{ type_json() }}) as {{ adapter.quote('618') }},
    cast({{ adapter.quote('619') }} as {{ type_json() }}) as {{ adapter.quote('619') }},
    cast({{ adapter.quote('860') }} as {{ type_json() }}) as {{ adapter.quote('860') }},
    cast({{ adapter.quote('861') }} as {{ type_json() }}) as {{ adapter.quote('861') }},
    cast({{ adapter.quote('620') }} as {{ type_json() }}) as {{ adapter.quote('620') }},
    cast({{ adapter.quote('862') }} as {{ type_json() }}) as {{ adapter.quote('862') }},
    cast({{ adapter.quote('500') }} as {{ type_json() }}) as {{ adapter.quote('500') }},
    cast({{ adapter.quote('621') }} as {{ type_json() }}) as {{ adapter.quote('621') }},
    cast({{ adapter.quote('863') }} as {{ type_json() }}) as {{ adapter.quote('863') }},
    cast({{ adapter.quote('622') }} as {{ type_json() }}) as {{ adapter.quote('622') }},
    cast({{ adapter.quote('864') }} as {{ type_json() }}) as {{ adapter.quote('864') }},
    cast({{ adapter.quote('623') }} as {{ type_json() }}) as {{ adapter.quote('623') }},
    cast({{ adapter.quote('624') }} as {{ type_json() }}) as {{ adapter.quote('624') }},
    cast({{ adapter.quote('866') }} as {{ type_json() }}) as {{ adapter.quote('866') }},
    cast({{ adapter.quote('504') }} as {{ type_json() }}) as {{ adapter.quote('504') }},
    cast({{ adapter.quote('625') }} as {{ type_json() }}) as {{ adapter.quote('625') }},
    cast({{ adapter.quote('867') }} as {{ type_json() }}) as {{ adapter.quote('867') }},
    cast({{ adapter.quote('626') }} as {{ type_json() }}) as {{ adapter.quote('626') }},
    cast({{ adapter.quote('868') }} as {{ type_json() }}) as {{ adapter.quote('868') }},
    cast({{ adapter.quote('506') }} as {{ type_json() }}) as {{ adapter.quote('506') }},
    cast({{ adapter.quote('627') }} as {{ type_json() }}) as {{ adapter.quote('627') }},
    cast({{ adapter.quote('869') }} as {{ type_json() }}) as {{ adapter.quote('869') }},
    cast({{ adapter.quote('628') }} as {{ type_json() }}) as {{ adapter.quote('628') }},
    cast({{ adapter.quote('629') }} as {{ type_json() }}) as {{ adapter.quote('629') }},
    cast({{ adapter.quote('509') }} as {{ type_json() }}) as {{ adapter.quote('509') }},
    cast({{ adapter.quote('870') }} as {{ type_json() }}) as {{ adapter.quote('870') }},
    cast({{ adapter.quote('871') }} as {{ type_json() }}) as {{ adapter.quote('871') }},
    cast({{ adapter.quote('630') }} as {{ type_json() }}) as {{ adapter.quote('630') }},
    cast({{ adapter.quote('872') }} as {{ type_json() }}) as {{ adapter.quote('872') }},
    cast({{ adapter.quote('631') }} as {{ type_json() }}) as {{ adapter.quote('631') }},
    cast({{ adapter.quote('873') }} as {{ type_json() }}) as {{ adapter.quote('873') }},
    cast({{ adapter.quote('874') }} as {{ type_json() }}) as {{ adapter.quote('874') }},
    cast({{ adapter.quote('875') }} as {{ type_json() }}) as {{ adapter.quote('875') }},
    cast({{ adapter.quote('876') }} as {{ type_json() }}) as {{ adapter.quote('876') }},
    cast({{ adapter.quote('877') }} as {{ type_json() }}) as {{ adapter.quote('877') }},
    cast({{ adapter.quote('878') }} as {{ type_json() }}) as {{ adapter.quote('878') }},
    cast({{ adapter.quote('879') }} as {{ type_json() }}) as {{ adapter.quote('879') }},
    cast({{ adapter.quote('519') }} as {{ type_json() }}) as {{ adapter.quote('519') }},
    cast({{ adapter.quote('880') }} as {{ type_json() }}) as {{ adapter.quote('880') }},
    cast({{ adapter.quote('881') }} as {{ type_json() }}) as {{ adapter.quote('881') }},
    cast({{ adapter.quote('640') }} as {{ type_json() }}) as {{ adapter.quote('640') }},
    cast({{ adapter.quote('882') }} as {{ type_json() }}) as {{ adapter.quote('882') }},
    cast({{ adapter.quote('641') }} as {{ type_json() }}) as {{ adapter.quote('641') }},
    cast({{ adapter.quote('883') }} as {{ type_json() }}) as {{ adapter.quote('883') }},
    cast({{ adapter.quote('521') }} as {{ type_json() }}) as {{ adapter.quote('521') }},
    cast({{ adapter.quote('642') }} as {{ type_json() }}) as {{ adapter.quote('642') }},
    cast({{ adapter.quote('643') }} as {{ type_json() }}) as {{ adapter.quote('643') }},
    cast({{ adapter.quote('523') }} as {{ type_json() }}) as {{ adapter.quote('523') }},
    cast({{ adapter.quote('644') }} as {{ type_json() }}) as {{ adapter.quote('644') }},
    cast({{ adapter.quote('524') }} as {{ type_json() }}) as {{ adapter.quote('524') }},
    cast({{ adapter.quote('645') }} as {{ type_json() }}) as {{ adapter.quote('645') }},
    cast({{ adapter.quote('646') }} as {{ type_json() }}) as {{ adapter.quote('646') }},
    cast({{ adapter.quote('526') }} as {{ type_json() }}) as {{ adapter.quote('526') }},
    cast({{ adapter.quote('647') }} as {{ type_json() }}) as {{ adapter.quote('647') }},
    cast({{ adapter.quote('648') }} as {{ type_json() }}) as {{ adapter.quote('648') }},
    cast({{ adapter.quote('649') }} as {{ type_json() }}) as {{ adapter.quote('649') }},
    cast({{ adapter.quote('529') }} as {{ type_json() }}) as {{ adapter.quote('529') }},
    cast({{ adapter.quote('650') }} as {{ type_json() }}) as {{ adapter.quote('650') }},
    cast({{ adapter.quote('651') }} as {{ type_json() }}) as {{ adapter.quote('651') }},
    cast({{ adapter.quote('652') }} as {{ type_json() }}) as {{ adapter.quote('652') }},
    cast({{ adapter.quote('653') }} as {{ type_json() }}) as {{ adapter.quote('653') }},
    cast({{ adapter.quote('654') }} as {{ type_json() }}) as {{ adapter.quote('654') }},
    cast({{ adapter.quote('655') }} as {{ type_json() }}) as {{ adapter.quote('655') }},
    cast({{ adapter.quote('656') }} as {{ type_json() }}) as {{ adapter.quote('656') }},
    cast({{ adapter.quote('657') }} as {{ type_json() }}) as {{ adapter.quote('657') }},
    cast({{ adapter.quote('658') }} as {{ type_json() }}) as {{ adapter.quote('658') }},
    cast({{ adapter.quote('659') }} as {{ type_json() }}) as {{ adapter.quote('659') }},
    cast({{ adapter.quote('539') }} as {{ type_json() }}) as {{ adapter.quote('539') }},
    cast({{ adapter.quote('660') }} as {{ type_json() }}) as {{ adapter.quote('660') }},
    cast({{ adapter.quote('661') }} as {{ type_json() }}) as {{ adapter.quote('661') }},
    cast({{ adapter.quote('541') }} as {{ type_json() }}) as {{ adapter.quote('541') }},
    cast({{ adapter.quote('662') }} as {{ type_json() }}) as {{ adapter.quote('662') }},
    cast({{ adapter.quote('663') }} as {{ type_json() }}) as {{ adapter.quote('663') }},
    cast({{ adapter.quote('543') }} as {{ type_json() }}) as {{ adapter.quote('543') }},
    cast({{ adapter.quote('664') }} as {{ type_json() }}) as {{ adapter.quote('664') }},
    cast({{ adapter.quote('545') }} as {{ type_json() }}) as {{ adapter.quote('545') }},
    cast({{ adapter.quote('546') }} as {{ type_json() }}) as {{ adapter.quote('546') }},
    cast({{ adapter.quote('548') }} as {{ type_json() }}) as {{ adapter.quote('548') }},
    cast({{ adapter.quote('549') }} as {{ type_json() }}) as {{ adapter.quote('549') }},
    cast({{ adapter.quote('551') }} as {{ type_json() }}) as {{ adapter.quote('551') }},
    cast({{ adapter.quote('552') }} as {{ type_json() }}) as {{ adapter.quote('552') }},
    cast({{ adapter.quote('311') }} as {{ type_json() }}) as {{ adapter.quote('311') }},
    cast({{ adapter.quote('554') }} as {{ type_json() }}) as {{ adapter.quote('554') }},
    cast({{ adapter.quote('555') }} as {{ type_json() }}) as {{ adapter.quote('555') }},
    cast({{ adapter.quote('315') }} as {{ type_json() }}) as {{ adapter.quote('315') }},
    cast({{ adapter.quote('557') }} as {{ type_json() }}) as {{ adapter.quote('557') }},
    cast({{ adapter.quote('558') }} as {{ type_json() }}) as {{ adapter.quote('558') }},
    cast({{ adapter.quote('679') }} as {{ type_json() }}) as {{ adapter.quote('679') }},
    cast({{ adapter.quote('680') }} as {{ type_json() }}) as {{ adapter.quote('680') }},
    cast({{ adapter.quote('560') }} as {{ type_json() }}) as {{ adapter.quote('560') }},
    cast({{ adapter.quote('681') }} as {{ type_json() }}) as {{ adapter.quote('681') }},
    cast({{ adapter.quote('561') }} as {{ type_json() }}) as {{ adapter.quote('561') }},
    cast({{ adapter.quote('682') }} as {{ type_json() }}) as {{ adapter.quote('682') }},
    cast({{ adapter.quote('683') }} as {{ type_json() }}) as {{ adapter.quote('683') }},
    cast({{ adapter.quote('563') }} as {{ type_json() }}) as {{ adapter.quote('563') }},
    cast({{ adapter.quote('564') }} as {{ type_json() }}) as {{ adapter.quote('564') }},
    cast({{ adapter.quote('685') }} as {{ type_json() }}) as {{ adapter.quote('685') }},
    cast({{ adapter.quote('686') }} as {{ type_json() }}) as {{ adapter.quote('686') }},
    cast({{ adapter.quote('566') }} as {{ type_json() }}) as {{ adapter.quote('566') }},
    cast({{ adapter.quote('687') }} as {{ type_json() }}) as {{ adapter.quote('687') }},
    cast({{ adapter.quote('567') }} as {{ type_json() }}) as {{ adapter.quote('567') }},
    cast({{ adapter.quote('688') }} as {{ type_json() }}) as {{ adapter.quote('688') }},
    cast({{ adapter.quote('689') }} as {{ type_json() }}) as {{ adapter.quote('689') }},
    cast({{ adapter.quote('569') }} as {{ type_json() }}) as {{ adapter.quote('569') }},
    cast({{ adapter.quote('329') }} as {{ type_json() }}) as {{ adapter.quote('329') }},
    cast({{ adapter.quote('570') }} as {{ type_json() }}) as {{ adapter.quote('570') }},
    cast({{ adapter.quote('691') }} as {{ type_json() }}) as {{ adapter.quote('691') }},
    cast({{ adapter.quote('692') }} as {{ type_json() }}) as {{ adapter.quote('692') }},
    cast({{ adapter.quote('330') }} as {{ type_json() }}) as {{ adapter.quote('330') }},
    cast({{ adapter.quote('572') }} as {{ type_json() }}) as {{ adapter.quote('572') }},
    cast({{ adapter.quote('693') }} as {{ type_json() }}) as {{ adapter.quote('693') }},
    cast({{ adapter.quote('331') }} as {{ type_json() }}) as {{ adapter.quote('331') }},
    cast({{ adapter.quote('573') }} as {{ type_json() }}) as {{ adapter.quote('573') }},
    cast({{ adapter.quote('694') }} as {{ type_json() }}) as {{ adapter.quote('694') }},
    cast({{ adapter.quote('695') }} as {{ type_json() }}) as {{ adapter.quote('695') }},
    cast({{ adapter.quote('575') }} as {{ type_json() }}) as {{ adapter.quote('575') }},
    cast({{ adapter.quote('576') }} as {{ type_json() }}) as {{ adapter.quote('576') }},
    cast({{ adapter.quote('697') }} as {{ type_json() }}) as {{ adapter.quote('697') }},
    cast({{ adapter.quote('698') }} as {{ type_json() }}) as {{ adapter.quote('698') }},
    cast({{ adapter.quote('578') }} as {{ type_json() }}) as {{ adapter.quote('578') }},
    cast({{ adapter.quote('699') }} as {{ type_json() }}) as {{ adapter.quote('699') }},
    cast({{ adapter.quote('579') }} as {{ type_json() }}) as {{ adapter.quote('579') }},
    cast({{ adapter.quote('581') }} as {{ type_json() }}) as {{ adapter.quote('581') }},
    cast({{ adapter.quote('582') }} as {{ type_json() }}) as {{ adapter.quote('582') }},
    cast({{ adapter.quote('584') }} as {{ type_json() }}) as {{ adapter.quote('584') }},
    cast({{ adapter.quote('585') }} as {{ type_json() }}) as {{ adapter.quote('585') }},
    cast({{ adapter.quote('587') }} as {{ type_json() }}) as {{ adapter.quote('587') }},
    cast({{ adapter.quote('589') }} as {{ type_json() }}) as {{ adapter.quote('589') }},
    cast({{ adapter.quote('469') }} as {{ type_json() }}) as {{ adapter.quote('469') }},
    _AIRBYTE_AB_ID,
    _AIRBYTE_EMITTED_AT,
    {{ current_timestamp() }} as _AIRBYTE_NORMALIZED_AT
from {{ ref('LIST_RESPONSES_SURVEY_DATA_AB1') }}
-- SURVEY_DATA at list_responses/survey_data
where 1 = 1

