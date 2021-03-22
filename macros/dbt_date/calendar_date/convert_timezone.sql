{%- macro sqlserver__convert_timezone(column, target_tz, source_tz) -%}
({{column}} AT TIME ZONE '{{source_tz}}') AT TIME ZONE  '{{target_tz}}'
{%- endmacro -%}