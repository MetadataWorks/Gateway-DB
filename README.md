[![LICENCE](https://img.shields.io/github/license/HDRUK/Gateway-DB)](https://github.com/HDRUK/Gateway-DB/blob/master/LICENSE)
[![Support](https://img.shields.io/badge/Supported%20By-HDR%20UK-blue)](https://hdruk.ac.uk)

# HDR UK GATEWAY - PostgreSQL Database

## Relevant Repositories

React Front End Application [Repository](https://github.com/HDRUK/Gateway-Frontend)  
Node Web and Authentication Server [Repository](https://github.com/HDRUK/Gateway-Auth-Server)  
Node Graphql Data Handler [Repository](https://github.com/HDRUK/Gateway-Middleware)  
Postgres Database Creation and update [Repository](https://github.com/HDRUK/Gateway-DB)  
​

## Overview

This repository creates and maintains the PostgreSQL Database for the HDR Gateway Project.

## Setup Local Development​

#### Step 1

Install postgreSQL -> [PostgreSQL](https://www.postgresql.org/)
​
This will install a default user `postgres` -> **DON'T FORGET YOUR PASSWORD**
​

> (for local environment admin/ admin could be used BUT ONLY FOR LOCAL DEVELOPMENT)
> ​
> If on windows add the applications bin directory to the path.
> ​

#### Step 2

Using pgAdmin
​
Create a new Login / Group Role & databse.
​

> sql/000_create_db.sql
>
> **YOU WILL NEED THE PASSWORD FOR THE NODEJS GRAPHQL ENVIRONMENT VARIABLES**
> ​

#### Step 3

Initialise the Database
​

> sql/001_initialise_db.sql
> ​

#### Step 4

run all the migrations
​

> sql/002_add_searchsaved_name_column.sql
> sql/003_create_accessrequest_table.sql
> sql/004_alter_accessrequest_dates.sql
> sql/005_add_searchaudit_session_id_columns.sql

---

### For Deployment

> When using the -v values, they are converted to all lowercase
> ​

#### Create The DB

`psql -f .\sql\000_create_db.sql -v dbName="DB NAME" -v userName="NEW USER ROLE" -U user`
​

#### Initialise the DB

`psql -f .\sql\001_initialise_db.sql -v userName="user name from previous command" -U postgres --dbname DB Name from previous command`
​

#### Migration Scripts

`psql -f ./sql/002_add_searchsaved_name_column.sql --dbname HDR_GATEWAY_DB -U userName`
`psql -f ./sql/003_create_accessrequest_table.sql --dbname HDR_GATEWAY_DB -U userName`
`psql -f ./sql/004_alter_accessrequest_dates.sql --dbname HDR_GATEWAY_DB -U userName`
`psql -f ./sql/005_add_searchaudit_session_id_columns.sql --dbname HDR_GATEWAY_DB -U userName`
