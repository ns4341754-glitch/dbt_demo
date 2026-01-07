{% macro season_of_year(timestamp_col) %}
    case
        when month(to_timestamp({{ timestamp_col }})) in (12, 1, 2)
        then 'winter'
        when month(to_timestamp({{ timestamp_col }})) in (3, 4, 5)
        then 'spring'
        when month(to_timestamp({{ timestamp_col }})) in (6, 7, 8)
        then 'summer'
        else 'autumn'
    end
{% endmacro %}

{% macro day(x) %}
    case
        when dayname(to_timestamp({{ x }})) in ('Sat', 'Sun')
        then 'weekend'
        else 'businessday'
    end
{% endmacro %}
