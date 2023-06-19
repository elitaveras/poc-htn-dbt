/* 
    Meant to show how we can have more advance macros
*/
{% macro validate_email(column_name) %}
    regexp_like({{ column_name }}, '^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
{% endmacro %}