{{ config(materialized="incremental", unique_key="Empid", alias="emp_curated") }}

select *
from sfdb.raw_data.emp_raw
{% if is_incremental() %}
    where inserted > (select max(inserted) from {{ this }})
{% endif %}
