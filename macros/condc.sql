/* 
    Meant to show how we can have more advance macros
*/
{% macro condc(column_name) %}
    /*
       Converts a numeric value with a decimal point and two digits into dollars and cents.  
       If the value floats in the field, CONDC packs, right-justifies, and left-zero-fills the field.  
       If the field contains only blanks or zeros, CONDC moves a de
    */
    upper(trim((CAST(CAST({{ column_name }} AS DECIMAL(38,2)) AS VARCHAR))))
{% endmacro %}