/* 
    Meant to show how we can have more advance macros
*/
{% macro dtnopun(column_name) %}
    /*
       Reformats an input field by removing special characters and punctuation, leaving only valid alphanumeric characters, left-justified, in the return area.  Requires one parameter.
    */
    array_join(regexp_extract_all({{ column_name }}, '[[:alnum:]]+'), '')
{% endmacro %}