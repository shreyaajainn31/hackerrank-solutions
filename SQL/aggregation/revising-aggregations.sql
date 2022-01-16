/*Query a count of the number of cities in CITY having a Population larger than 100,000.

Input Format

The CITY table is described as follows:
Field  Type
ID     number
Name   varchar2(17)
Countrycode  varchar2(3)
District   varchar2(20)
Population  number

Solution:*/

select count(name) from city where population > 100000;
