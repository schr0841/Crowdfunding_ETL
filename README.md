# Crowdfunding_ETL
Project 2 for U of M Data Analytics Bootcamp


# Crowdfunding Database

The ERD is in the file images/ERD.png, and it is displayed below:

## Entity Relationship Diagram:
![erd](https://github.com/schr0841/Crowdfunding_ETL/blob/main/images/ERD.png)

The table schema used is in the file crowdfunding_db_schema.sql. This file correctly sets up the tables and identifies the relationships between the tables. The foreign keys of the campaign table are primary keys for the other tables. 

## Campaign table:
code: SELECT * FROM campaign LIMIT 20;

![campaign table](https://github.com/schr0841/Crowdfunding_ETL/blob/main/images/campaign%20table.png)

## Category table:
code: SELECT * FROM category LIMIT 20;

![Category table](https://github.com/schr0841/Crowdfunding_ETL/blob/main/images/category%20table.png)

## Contacts table:
code: SELECT * FROM  contacts LIMIT 20;

![Contacts table](https://github.com/schr0841/Crowdfunding_ETL/blob/main/images/contacts%20table.png)

## Subcategory table:
code: SELECT * FROM subcategory LIMIT 20;

![Subcategory table](https://github.com/schr0841/Crowdfunding_ETL/blob/main/images/subcategory%20table.png)
