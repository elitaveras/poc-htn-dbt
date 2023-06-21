
/*
    Reading data that is ready to be processed
*/

{{ config(materialized='table') }}


select 
    first_name, 
    last_name,
    email,
    phone, 
    street_address,
    city,
    country,
    company_name,
    department,
    job_title,
    money_bank_account
from 
"db_landing_poc_htn"."crw_landing_zone"
limit 100;

