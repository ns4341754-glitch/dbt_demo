with
    cte as (
        select
            to_timestamp(started_at) as started_at,
            date(to_timestamp(started_at)) as date_started,
            dayname(to_timestamp(started_at)) as day_started,
            {{ day("STARTED_AT") }} as day_started_at,
            {{ season_of_year("STARTED_AT") }} as season_of_year
        from {{ source("demo", "bike") }}
        where started_at != 'started_at'

    )

select *
from cte
