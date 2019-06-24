/*
Kohl Stark
SQL_Database
12/2018
ddl.sql
This file is repsonsilbe for creating the tables with their appropriate data types, setting the primary keys,
and setting the foreign keys.
*/

/* script to create a table table */
CREATE TABLE Restaurant_Table
(
	Tname			INTEGER,
	tTimestamp		DATE,
	No_of_customers	INTEGER			NOT NULL,
	Check_amt		FLOAT			NOT NULL,
	Food			VARCHAR(50)		NOT NULL,
	Drinks			VARCHAR(50)		NOT NULL,
	PRIMARY KEY (Tname, tTimestamp)

); 
SHOW ERRORS;

/* script to create a Bussers table */

CREATE TABLE Bussers
(
	BSSN				INTEGER			PRIMARY KEY,
	Hours_worked		FLOAT			NOT NULL,
	Tname				INTEGER,
	tTimestamp			DATE,
	Food_bussed			VARCHAR(50)		NOT NULL,
	Drinks_bussed		VARCHAR(50)		NOT NULL,
	Tables_bussed		INTEGER			NOT NULL,
	FOREIGN KEY (Tname, tTimestamp) REFERENCES Restaurant_Table(Tname, tTimestamp) ON DELETE CASCADE

);
SHOW ERRORS;

/* script to create a Hosts table */

CREATE TABLE Hosts
(
	HSSN			INTEGER		PRIMARY KEY,
	Hours_worked	FLOAT		NOT NULL,
	Tname			INTEGER,
	tTimestamp		DATE,
	Tables_sat		INTEGER		NOT NULL,
	FOREIGN KEY (Tname, tTimestamp) REFERENCES Restaurant_Table(Tname, tTimestamp) ON DELETE CASCADE

);
SHOW ERRORS;

/* script to create a Bartenders table */

CREATE TABLE Bartenders
(
	TSSN				INTEGER 		PRIMARY KEY,
	Hours_worked		FLOAT			NOT NULL,
	Tname				INTEGER,
	tTimestamp			DATE,
	Food_ordered		VARCHAR(50)		NOT NULL,
	Drinks_ordered		VARCHAR(50)		NOT NULL,
	Drinks_made			INTEGER			NOT NULL,
	FOREIGN KEY (Tname, tTimestamp) REFERENCES Restaurant_Table(Tname, tTimestamp) ON DELETE CASCADE

);
SHOW ERRORS;

/* script to create a Cooks table */

CREATE TABLE Cooks
(
	CSSN			INTEGER			PRIMARY KEY,
	Hours_worked	FLOAT			NOT NULL,
	Tname			INTEGER,
	tTimestamp		DATE,
	Food_made		VARCHAR(50)		NOT NULL,
	Orders_prepared	INTEGER			NOT NULL,
	FOREIGN KEY (Tname, tTimestamp) REFERENCES Restaurant_Table(Tname, tTimestamp) ON DELETE CASCADE
);
SHOW ERRORS;

/* script to create a Servers table */

CREATE TABLE Servers
(
	SSSN			INTEGER			PRIMARY KEY,
	Hours_worked	FLOAT			NOT NULL,
	Tname			INTEGER,
	tTimestamp		DATE,
	Orders 			INTEGER			NOT NULL,
	BSSN			INTEGER			NOT NULL,
	HSSN			INTEGER			NOT NULL,
	Food_ordered	VARCHAR(50)		NOT NULL,
	Drinks_ordered 	VARCHAR(50)		NOT NULL,
	TSSN			INTEGER			NOT NULL,
	Sales			FLOAT			NOT NULL,
	FOREIGN KEY (Tname, tTimestamp) REFERENCES Restaurant_Table(Tname, tTimestamp) ON DELETE CASCADE,
	FOREIGN KEY (BSSN) REFERENCES Bussers(BSSN) ON DELETE CASCADE,
	FOREIGN KEY (HSSN) REFERENCES Hosts(HSSN) ON DELETE CASCADE,
	FOREIGN KEY (TSSN) REFERENCES Bartenders(TSSN) ON DELETE CASCADE

);
SHOW ERRORS;

/* script to create a Managers table */

CREATE TABLE Managers
(
	MSSN			INTEGER		PRIMARY KEY,
	Hours_worked	FLOAT		NOT NULL,
	HSSN			INTEGER		NOT NULL,
	BSSN			INTEGER		NOT NULL,
	TSSN			INTEGER		NOT NULL,
	SSSN			INTEGER		NOT NULL,
	CSSN			INTEGER		NOT NULL,
	Meals_compd		INTEGER		NOT NULL,
	FOREIGN KEY (HSSN) REFERENCES Hosts(HSSN) ON DELETE CASCADE,
	FOREIGN KEY (BSSN) REFERENCES Bussers(BSSN) ON DELETE CASCADE,
	FOREIGN KEY (TSSN) REFERENCES Bartenders(TSSN) ON DELETE CASCADE,
	FOREIGN KEY (SSSN) REFERENCES Servers(SSSN) ON DELETE CASCADE,
	FOREIGN KEY (CSSN) REFERENCES Cooks(CSSN) ON DELETE CASCADE

);
SHOW ERRORS;



