{{ config(
    materialized='table',
    schema='transformed',
    
) }}


SELECT

	-- IDs
	"VTPID",

	-- personal data
	"VCFullName" 

	
	

FROM {{ ref('stg_student_vc') }} AS VC
