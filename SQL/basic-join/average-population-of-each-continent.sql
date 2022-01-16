/*

Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) 
rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

CITY
Field         Type
ID            Number
Name          VARCHAR2(17)
countrycode   VARCHAR2(3)
district      VARCHAR2(20)
population    Number

COUNTRY

Field           Type
Code            Varchar(2)
Name            Varchar(44)
Continent       Varchar(13)
Region          Varchar(25)
surfaceyear     NUMBER
indepyear       Varchar(5)
population      Number
lifeexpectancy  Varchar(4)
gnp             number
gnpold          Varchar(9)
localname       Varchar(44)
governmentform  Varchar(44)
headofstate     Varchar(32)
capital         Varchar(4)
code2           Varchar(2)

Solution:
*/


select country.continent, floor(avg(city.population)) from city,country where city.countrycode = country.code group by country.continent;

