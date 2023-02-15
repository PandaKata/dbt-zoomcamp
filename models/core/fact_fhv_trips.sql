{{config(materialized='table')}}

with fhv_data as (
    select *
    from {{ ref('stg_fhv_tripdata') }}
)

select 
    fhv_data.tripid,
    fhv_data.dispatching_base_num,
    fhv_data.pickup_locationid
    fhv_data.dropoff_locationid,
    fhv_data.aff_base_number,
    fhv_data.sr_flag,
    fhv_data.pickup_datetime,
    fhv_data.dropoff_datetime
from fhv_data
