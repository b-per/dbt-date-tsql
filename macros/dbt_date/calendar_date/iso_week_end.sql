{%- macro sqlserver__iso_week_end(date) -%}
{{ dbt_date._iso_week_end(date, 'iso_week') }}
{%- endmacro %}