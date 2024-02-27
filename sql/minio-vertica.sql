-- check role ---
SHOW ENABLED_ROLES;
SHOW AVAILABLE_ROLES;

-- set enable role ---
SET ROLE S3CMDacUsers;
-------------------------------------------------------------------


---------------
-- User Zone --
---------------

---- Set Session s3 connection ----
ALTER SESSION SET S3BucketCredentials='[
{
    "bucket": "b1",
    "accessKey": "",
    "secretAccessKey": ""
},
{
    "bucket": "b2",
    "accessKey": "",
    "secretAccessKey": ""
}
]';


-- show configulation ---
SELECT * FROM CONFIGURATION_PARAMETERS WHERE parameter_name LIKE '%AWS%';




---- COPY FROM S3 -------
DROP TABLE IF EXISTS V_TEMP_SCHEMA.cage;
CREATE LOCAL TEMP TABLE cage  ON COMMIT PRESERVE ROWS AS SELECT * FROM colookup.cage LIMIT 0;


COPY cage FROM 's3://vertica/hdc_lookup/cage.csv.bz2' BZIP PARSER FCSVPARSER();

SELECT  * FROM V_TEMP_SCHEMA.cage;



---- COPY FROM S3 ------------
--- With Flex Table ---
DROP VIEW IF EXISTS public.cage_view;
DROP TABLE IF EXISTS public.cage;
CREATE FLEX TABLE public.cage();
COPY public.cage FROM 's3://vertica/hdc_lookup/cage.csv.bz2' BZIP PARSER FCSVPARSER();


SELECT * FROM public.cage;

--- compute view ---
SELECT compute_flextable_keys_and_build_view('cage');

SELECT * FROM public.cage_view;










