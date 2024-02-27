
-- Set Default S3 In Database ---
ALTER DATABASE DEFAULT SET PARAMETER AWSEndpoint = 's3.amazonaws.com';
ALTER DATABASE DEFAULT SET PARAMETER AWSEnableHttps = 1;
ALTER DATABASE DEFAULT SET PARAMETER AWSAuth  = '';
ALTER DATABASE DEFAULT SET PARAMETER S3EnableVirtualAddressing = 0;
ALTER DATABASE DEFAULT SET PARAMETER AWSStreamingConnectionPercentage = 0;
ALTER DATABASE DEFAULT SET PARAMETER AWSRegion  = 'sea-thai-1';
ALTER DATABASE DEFAULT SET PARAMETER AWSLogLevel  = 'INFO';





---------------------------------------------
SELECT * FROM CONFIGURATION_PARAMETERS WHERE parameter_name LIKE '%AWS%';


-- drop location ---
-- SELECT  DROP_LOCATION('s3://bucket_name', '');

-- set create localtion ---
CREATE LOCATION 's3://bucket_name' SHARED USAGE 'USER' LABEL 's3user';

-- DROP ROLE S3CMDacUsers;
CREATE ROLE S3CMDacUsers;
GRANT READ ON LOCATION 's3://bucket_name' TO S3CMDacUsers;


-- REVOKE S3CMDacUsers FROM attapon;
GRANT S3CMDacUsers TO attapon; -- enable manual

-- how to user enable role
SET ROLE S3CMDacUsers;
---

ALTER USER attapon DEFAULT ROLE S3CMDacUsers; -- set auto enable role




SELECT  * FROM roles;
SELECT * FROM grants WHERE grantee = 'S3CMDacUsers'
ORDER BY grantor, grantee;