{{ config(
    materialized='table',
    schema='transformed',
    
) }}


WITH source AS (
	SELECT *

	FROM {{ source('all_students', 'VTP') }}
)

SELECT
	-- IDs
	"VTPID", "VTPName" as "VTPFullName"


FROM source
