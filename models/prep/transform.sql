{{ config(materialized='table') }}



select to_hex(sha256(to_utf8(full_name))) as id, *
from (
    select 
        {{ clean_string('last_name') }} || ', ' || {{ clean_string('first_name') }} as full_name, 
        case when {{validate_email('email')}}
        then email
        else ''
        end as email, 
        phone, 
        {{ clean_string('street_address') }} as street_address,
        {{ clean_string('city') }} as city,
        {{ clean_string('country') }} as country,
        {{ clean_string('company_name') }} as company_name,
        {{ clean_string('department') }} as department,
        {{ clean_string('job_title') }} as job_title
    from 
    {{ ref('read_new_data') }}
)

