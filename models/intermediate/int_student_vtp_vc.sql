{{ config(
    materialized='table',
    schema='transformed',
    
) }}


WITH VTP AS (
	SELECT
		*
	
	FROM {{ ref('stg_student_vtp') }}
)

SELECT

	-- IDs
	vcid,
	VTP."VTPID",

	-- personal data
	vcname,
	VTP."VTPFullName" 

	
	

FROM {{ ref('stg_student_vc') }} AS VC
INNER JOIN VTP ON VC.vtpidfk = VTP."VTPID"
