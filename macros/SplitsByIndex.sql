{% macro SplitsByIndex(ss, sep, ind) %}
    {%- set split_result = ss.split(sep) -%}
    {{ split_result[ind - 1] }}
{% endmacro %}