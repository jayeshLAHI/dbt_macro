{{ config(
    materialized='table',
    schema='transformed',
    
) }}


WITH source AS (
	SELECT *

	FROM {{ source('all_students', 'VC') }}
)

SELECT
	-- IDs
	"VCID", 
    json_build_object(
         'VTPID', "VTPID",
         'Name', "Name"
    )
    as VCJSON


FROM source
