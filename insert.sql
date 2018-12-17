/*
Kohl Stark
kgstark1@asu.edu
*/

/*
** ----------------------------------------------------------------------------
** script to insert data into the Restaurant_Table table 
** --------------------------------------------------------------------------*/

INSERT INTO Restaurant_Table VALUES(1, '16-DEC-18', 4, 139.21, 'Fajitas, Chips, Tacos', 'Margaritas, Beer');
INSERT INTO Restaurant_Table VALUES(3, '15-DEC-18', 2, 63.53, 'Chimichangas, Burrito, Salsa', 'Beer, Tequila');
INSERT INTO Restaurant_Table VALUES(15, '14-DEC-18', 3, 80.96, 'Enchiladas, Tacos, Guacamole', 'Water, Soda');
INSERT INTO Restaurant_Table VALUES(12, '13-DEC-18', 6, 236.42, 'Combo #5, Queso Verde, Taquitos', 'Margaritas, Vodka');

/*
** ----------------------------------------------------------------------------
** update No_of_customers and Check_amt in the Restaurant_Table table 
** --------------------------------------------------------------------------*/

UPDATE Restaurant_Table SET No_of_customers = 5 WHERE No_of_customers = 6;
UPDATE Restaurant_Table SET Check_amt = 130.42 WHERE Check_amt = 139.21;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Bussers table 
** --------------------------------------------------------------------------*/

INSERT INTO Bussers VALUES(1234, 5.3, 1, '16-DEC-18', 'Enchiladas, Tacos, Guacamole', 'Water, Soda', 25);
INSERT INTO Bussers VALUES(3245, 4.3, 3, '15-DEC-18', 'Combo #5, Queso Verde, Taquitos', 'Margaritas, Vodka', 15);
INSERT INTO Bussers VALUES(4290, 6.7, 15, '14-DEC-18', 'Chimichangas, Burrito, Salsa', 'Beer, Tequila', 30);
INSERT INTO Bussers VALUES(5626, 3.9, 12, '13-DEC-18', 'Fajitas, Chips, Tacos', 'Margaritas, Beer', 21);

/*
** ----------------------------------------------------------------------------
** update Hours_worked and Tables_bussed in the Bussers table 
** --------------------------------------------------------------------------*/

UPDATE Bussers SET Hours_worked = 5.5 WHERE Hours_worked = 5.3;
UPDATE Bussers SET Tables_bussed = 18 WHERE Tables_bussed = 15;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Hosts table 
** --------------------------------------------------------------------------*/

INSERT INTO Hosts VALUES(3280, 4.1, 1, '16-DEC-18', 45);
INSERT INTO Hosts VALUES(3974, 10.7, 3, '15-DEC-18', 61);
INSERT INTO Hosts VALUES(0834, 1.4, 15, '14-DEC-18', 100);
INSERT INTO Hosts VALUES(1786, 8.4, 12, '13-DEC-18', 31);

/*
** ----------------------------------------------------------------------------
** update Hours_worked and Tables_sat in the Hosts table 
** --------------------------------------------------------------------------*/

UPDATE Hosts SET Hours_worked = 2.0 WHERE Hours_worked = 1.4;
UPDATE Hosts SET Tables_sat = 97 WHERE Tables_sat = 100;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Bartenders table 
** --------------------------------------------------------------------------*/

INSERT INTO Bartenders VALUES(5143, 11.2, 1, '16-DEC-18', 'Chimichangas, Burrito, Salsa', 'Beer, Tequila', 162);
INSERT INTO Bartenders VALUES(1987, 15.3, 3, '15-DEC-18', 'Enchiladas, Tacos, Guacamole', 'Water, Soda', 105);
INSERT INTO Bartenders VALUES(0063, 9.9, 15, '14-DEC-18', 'Fajitas, Chips, Tacos', 'Margaritas, Beer', 97);
INSERT INTO Bartenders VALUES(2008, 5.4, 12, '13-DEC-18', 'Combo #5, Queso Verde, Taquitos', 'Margaritas, Vodka', 61);

/*
** ----------------------------------------------------------------------------
** update Drinks_ordered and Drinks_made in the Bartenders table 
** --------------------------------------------------------------------------*/

UPDATE Bartenders SET Drinks_ordered = 'Mai Tai, Mojito, Banacoloda, Vodkarita' WHERE Drinks_ordered = 'Beer, Tequila';
UPDATE Bartenders SET Drinks_made = 203 WHERE Drinks_made = 105;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Cooks table 
** --------------------------------------------------------------------------*/

INSERT INTO Cooks VALUES(1817, 20.2, 1, '16-DEC-18', 'Combo #5, Queso Verde, Taquitos', 30);
INSERT INTO Cooks VALUES(7089, 10.3, 3, '15-DEC-18', 'Enchiladas, Tacos, Guacamole', 51);
INSERT INTO Cooks VALUES(4390, 15.4, 15, '14-DEC-18', 'Chimichangas, Burrito, Salsa', 47);
INSERT INTO Cooks VALUES(1950, 16.7, 12, '13-DEC-18', 'Fajitas, Chips, Tacos', 24);

/*
** ----------------------------------------------------------------------------
** update Food_made and Orderes_Prepared in the Cooks table 
** --------------------------------------------------------------------------*/

UPDATE Cooks SET Food_made = 'Soup, Ceviche, Kahlua Flan, Churros' WHERE Food_made = 'Fajitas, Chips, Tacos';
UPDATE Cooks SET Orders_prepared = 103 WHERE Orders_prepared = 51;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Servers table 
** --------------------------------------------------------------------------*/

INSERT INTO Servers VALUES(6250, 11.1, 1, '16-DEC-18', 23, 1234, 3280, 'Chimichangas, Burrito, Salsa', 'Beer, Tequila', 5143, 900.32);
INSERT INTO Servers VALUES(1921, 8.6, 3, '15-DEC-18', 36, 3245, 3974, 'Combo #5, Queso Verde, Taquitos', 'Margaritas, Vodka' , 1987, 1060.11);
INSERT INTO Servers VALUES(0891, 9.2, 15, '14-DEC-18', 18, 4290, 0834, 'Enchiladas, Tacos, Guacamole', 'Water, Soda', 0063, 701.90);
INSERT INTO Servers VALUES(1249, 7.1, 12, '13-DEC-18', 29, 5626, 1786, 'Fajitas, Chips, Tacos', 'Margaritas, Beer', 2008, 883.56);

/*
** ----------------------------------------------------------------------------
** update Orders and Sales in the Servers table 
** --------------------------------------------------------------------------*/

UPDATE Servers SET Orders = 24 WHERE Orders = 23;
UPDATE Servers SET Sales = 1241.33 WHERE Sales = 1060.11;

/*
** ----------------------------------------------------------------------------
** script to insert data into the Managers table 
** --------------------------------------------------------------------------*/

INSERT INTO Managers VALUES(7214, 56.3, 3280, 1234, 5143, 6250, 1817, 3);
INSERT INTO Managers VALUES(1254, 51.2, 3974, 3245, 1987, 1921, 7089, 1);
INSERT INTO Managers VALUES(9012, 49.2, 0834, 4290, 0063, 0891, 4390, 2);
INSERT INTO Managers VALUES(8123, 12.4, 1786, 5626, 2008, 1249, 1950, 4);

/*
** ----------------------------------------------------------------------------
** update Hours_worked and Meals_compd in the Managers table 
** --------------------------------------------------------------------------*/

UPDATE Managers SET Hours_worked = 56.6 WHERE Hours_worked = 56.3;
UPDATE Managers SET Meals_compd = 2 WHERE Meals_compd = 1;





