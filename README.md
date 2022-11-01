# Crowdfunding & Extract-Transform-Load
Data Bootcamp week 8 - ETL

## Project Overview
This repository includes guided homework exercises and an independent challenge exercise focused on the extract, transform, and load process. The exercise set up a scenario in which a crowdfunding platform was transitioning from tracking data in Excel to using a PostgreSQL database. 

## Project Description
The homework portion of the project involved using Python and Pandas to extract data from .csv and .xlsx files and to transform that data before loading it into a PostgreSQL database. An entity relationship diagram (ERD) was created with [QuickDBD](https://www.quickdatabasediagrams.com/) to depict the database tables and their relationships. SQL queries were written to answer questions about the data. Query results were saved and exported in .csv format.

### Extract and Transform
For the independent challenge portion of the exercise, an additional .csv file was provided, with information about the backers of specific crowdfunding campaigns. The data was presented in a single column of that .csv file, and so the extraction process included steps to break it into several different columns. The images below show how the data looked before and after.

Before:
![excerpt of csv file before data transformation](https://github.com/larabjork/crowdfunding-ETL/blob/main/backer_info_before.png)

After:
![excerpt of csv file after data transformation](https://github.com/larabjork/crowdfunding-ETL/blob/main/backer_info_after.png)

### Load
The initial ERD was modified to include a table for information about campaign backers, as shown here:

![entity relationship diagram with five tables](https://github.com/larabjork/crowdfunding-ETL/blob/main/crowdfunding_db_relationships.png)

### Queries
I wrote queries as specified in the challenge, which are saved as [crowdfunding_SQL_Analysis.sql](https://github.com/larabjork/crowdfunding-ETL/blob/main/crowdfunding_SQL_Analysis.sql)
