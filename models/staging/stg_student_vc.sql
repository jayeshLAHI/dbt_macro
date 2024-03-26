{{ config(
    materialized='table',
	schema="transformed"
    
) }}


WITH source AS (
	SELECT *
	FROM {{ source('all_students', 'VC2') }}
)

SELECT
	-- IDs
	vcid, vtpidfk, vcname


FROM source


