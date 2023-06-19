{{ config(
    materialized='incremental',
    format='parquet',
    write_compression='GZIP',
    table_type='iceberg',
    incremental_strategy= 'merge',
    s3_data_naming='table_unique',
    unique_key =['id']
    ) 
}}



select *
from {{ ref('transform') }}