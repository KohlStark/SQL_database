/*
Kohl Stark
kgstark1@asu.edu
*/

-- create tables
@ddl

-- show tables
DESC Restaurant_Table;
DESC Bussers;
DESC Hosts;
DESC Bartenders;
DESC Cooks;
DESC Servers;
DESC Managers;

-- insert data
@insert
-- show table content
/*
** ----------------------------------------------------------------------------
** Restaurant_Table table content
** --------------------------------------------------------------------------*/

SELECT * FROM Restaurant_Table;

-- show table content
/*
** ----------------------------------------------------------------------------
** Busseres table content
** --------------------------------------------------------------------------*/

SELECT * FROM Bussers;

-- show table content
/*
** ----------------------------------------------------------------------------
** Hosts table content
** --------------------------------------------------------------------------*/

SELECT * FROM Hosts;

-- show table content
/*
** ----------------------------------------------------------------------------
** Bartenders table content
** --------------------------------------------------------------------------*/

SELECT * FROM Bartenders;

-- show table content
/*
** ----------------------------------------------------------------------------
** Cooks table content
** --------------------------------------------------------------------------*/

SELECT * FROM Cooks;

-- show table content
/*
** ----------------------------------------------------------------------------
** Servers table content
** --------------------------------------------------------------------------*/

SELECT * FROM Servers;

-- show table content
/*
** ----------------------------------------------------------------------------
** Managers table content
** --------------------------------------------------------------------------*/

SELECT * FROM Managers;

-- run query
/*
** ----------------------------------------------------------------------------
** Query results
** --------------------------------------------------------------------------*/
@query

-- drop tables and views
@drop
