# snowflake-AzureDevOps-Demo
Snowflake DevOps using Flyway and Azure Devops - Proof of Concept files

## Steps to follow
Step 1 : Set up Snowflake User , Warehouse and Databases

CREATE DATABASE FLYWAY_DEMO COMMENT = 'Azure DevOps deployment test';
CREATE DATABASE FLYWAY_DEMO_DEV COMMENT = 'Azure DevOps deployment test';
CREATE DATABASE FLYWAY_DEMO_QA COMMENT = 'Azure DevOps deployment test';

create user devopsuser password='Password123' default_role = sysadmin;
grant role SYSADMIN to user devopsuser;

-- Create the DEMO_WH Warehouse
CREATE WAREHOUSE DEMO_WH WITH WAREHOUSE_SIZE = 'XSMALL' WAREHOUSE_TYPE = 'STANDARD' AUTO_SUSPEND = 600 AUTO_RESUME = TRUE MIN_CLUSTER_COUNT = 1 MAX_CLUSTER_COUNT = 1 SCALING_POLICY = 'STANDARD';

## Step 2 : Create Project in Azure DevOps
## Step 3: Create Enviornment in Azure DevOps
## Step 4: Create Variable Group in Azure DevOps
## step 5: Set up a Template Repository, Clone it and Push the template files to remote repo
## Step 6: Create a Pipeline 
