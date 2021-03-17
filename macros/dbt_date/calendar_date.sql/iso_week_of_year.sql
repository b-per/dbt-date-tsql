{%- macro sqlserver__iso_week_of_year(date) -%}
{{ dbt_date._iso_week_of_year(date, 'iso_week') }}
{%- endmacro %}