with station_dimen as (

select
distinct 
 START_STATION_NAME,
 START_STATIO_ID as START_STATION_ID,
 START_LAT,
 START_LNG
from {{ source('demo', 'bike') }} 
where RIDE_ID != 'ride_id'
)

select * from station_dimen