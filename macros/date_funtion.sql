{% macro season_of_year(timestamp_col) %}
  CASE
    WHEN MONTH(TO_TIMESTAMP({{ timestamp_col }})) IN (12, 1, 2) THEN 'winter'
    WHEN MONTH(TO_TIMESTAMP({{ timestamp_col }})) IN (3, 4, 5)  THEN 'spring'
    WHEN MONTH(TO_TIMESTAMP({{ timestamp_col }})) IN (6, 7, 8)  THEN 'summer'
    ELSE 'autumn'
  END 
{% endmacro %}

{% macro day (x) %}
 case
  when dayname(TO_TIMESTAMP({{x}})) in ('Sat' , 'Sun')
  then 'weekend'
  else 'businessday'
  end 
  {% endmacro %}
