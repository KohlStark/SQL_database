/*
Kohl Stark
kgstark1@asu.edu
*/

/*
** ----------------------------------------------------------------------------
Server Query
For each Server, retrieve the HSSN and BSSN, as well as the SSSN of Servers,
Their hours worked for the night, and their total Sales for their shift.
** --------------------------------------------------------------------------*/

SELECT Servers.SSSN, Servers.HSSN, Servers.BSSN, Servers.Hours_worked, Servers.Sales 
FROM (Hosts INNER JOIN server ON Hosts.HSSN = Servers.HSSN) INNER JOIN Bussers ON Bussers.BSSN = Servers.BSSN; 

/*
** ----------------------------------------------------------------------------
Manager Query
Pull up a Managers specific info for a given week. This info includes the managers
MSSN, the hours they worked this week, and the Meals_compd this week. It also 
pulls up their assigned HSSN, BSSN, TSSN, SSSN, CSSN for that week.
** --------------------------------------------------------------------------*/

SELECT Managers.MSSN, Managers.HSSN, Managers.BSSN, Managers.TSSN, Managers.SSSN, Managers.CSSN, Managers.Hours_worked, Managers.Meals_compd
FROM ((((Hosts INNER JOIN Managers ON Hosts.HSSN = Managers.HSSN) INNER JOIN Bussers ON Bussers.BSSN = Managers.BSSN) INNER JOIN Bartenders ON Bartenders.TSSN = Managers.TSSN) INNER JOIN Servers ON Servers.SSSN = Managers.SSSN) INNER JOIN Cooks ON Cooks.CSSN = Managers.CSSN;

/*
** ----------------------------------------------------------------------------
Restaurant_Table Query
Pull up a specific Restaurant_Table which lists the Tname, tTimestamp, No_of_customers,
and the Check_amt.
** --------------------------------------------------------------------------*/

SELECT FROM Restaurant_Table.Tname, Restaurant_Table.tTimestamp, Restaurant_Table.No_of_customers, Restaurant_Table.Check_amt 
FROM Restaurant_Table;
