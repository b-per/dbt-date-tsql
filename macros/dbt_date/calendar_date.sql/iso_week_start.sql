{%- macro sqlserver__iso_week_start(date) -%}
    cast(dateadd(week, datediff(week, 0, {{date}}), 0) as date)
{%- endmacro %}