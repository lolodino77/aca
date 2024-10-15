with 

source as (

  select * from {{ source('NRJBI_STG', 'TD_ACA_STAGING') }}

)

select * from source