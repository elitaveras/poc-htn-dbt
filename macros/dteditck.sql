/* 
    Meant to show how we can have more advance macros
*/
{% macro dteditck(column_name) %}
    /*
       Converts a numeric value with a decimal point and two digits into dollars and cents.  
       If the value floats in the field, CONDC packs, right-justifies, and left-zero-fills the field.  
       If the field contains only blanks or zeros, CONDC moves a de
    */
    -- array_join(x, delimiter, null_replacement) 
    lpad(array_join(regexp_extract_all({{ column_name }}, '\d+'),''),length(array_join(regexp_extract_all({{ column_name }}, '\d+'),'')) + length(array_join(regexp_extract_all({{ column_name }}, '\D+'), '')),'0')
{% endmacro %}