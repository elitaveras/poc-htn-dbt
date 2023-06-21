/* 
    Meant to show how we can have more advance macros
*/
{% macro dtulcs(column_name) %}
    /*
       Converts upper case letters in a given field to lower case letters after the first letter of each word.  Requires two parameters.
    */
    regexp_replace({{ column_name }}, '(\w)(\w*)', x -> upper(x[1]) || lower(x[2]))
{% endmacro %}