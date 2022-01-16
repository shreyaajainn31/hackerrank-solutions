/*Query the average population of all cities in CITY where District is California.
Input Format

The CITY table is described as follows:

The CITY table is described as follows:
Field  Type
ID     number
Name   varchar2(17)
Countrycode  varchar2(3)
District   varchar2(20)
Population  number



Solution:
*/
select (select sum(population) from city where district = "California")/(select count(name) from city where district = "California");
