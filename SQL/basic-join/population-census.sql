/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

The CITY and COUNTRY tables are described as follows:
CITY
Field Type
ID    number
Name  varchar2(17)
countrycode  varchar2(3)
district   varchar2(20)
population number

COUNTRY

Field Type
Code  char(3)
Name  char(52)
Continent char(50)
Region   char(26)
Surfacearea float(10,2)
indepyear   smallint(6)
population  int(11)
lifeexpectancy float(3,1)
gnp  float(10,2)
gnpo1d  float(10,2)
localname char(45)
governmentform char(45)
headofstate char(60)
capital  int(11)
code2 char(2)

Solution:
*/

select sum(city.population) from city, country where  city.countrycode = country.code and country.continent = 'Asia';
