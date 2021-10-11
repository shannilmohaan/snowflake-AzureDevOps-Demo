-- Login as AccountAdmin or SecurityAdmin and create the user for executing the DevOps pipeline
create user devopsuser password='Password123' default_role = sysadmin;
grant role SYSADMIN to user devopsuser;

-- Change the role to Sysadmin annd create the Databases and Virtual Warehouses
CREATE DATABASE FLYWAY_DEMO COMMENT = 'Azure DevOps deployment test';
CREATE DATABASE FLYWAY_DEMO_DEV COMMENT = 'Azure DevOps deployment test';
CREATE DATABASE FLYWAY_DEMO_QA COMMENT = 'Azure DevOps deployment test';

-- Create the DEMO_WH Warehouse
CREATE WAREHOUSE DEMO_WH WITH WAREHOUSE_SIZE = 'XSMALL' WAREHOUSE_TYPE = 'STANDARD' AUTO_SUSPEND = 600 AUTO_RESUME = TRUE MIN_CLUSTER_COUNT = 1 MAX_CLUSTER_COUNT = 1 SCALING_POLICY = 'STANDARD';