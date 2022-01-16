/*Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows:
Field  Type
ID     number
Name   varchar2(17)
Countrycode  varchar2(3)
District   varchar2(20)
Population  number

Solution:
*/
select max(population) - min(population) from city;
