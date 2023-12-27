{{ config(materialized='table') }}

WITH source_data AS (
    SELECT concat(id,'_',name) as new_name
         , age
    FROM source
)

SELECT *
FROM source_data
