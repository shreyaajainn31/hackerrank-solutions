Query the average population for all cities in CITY, rounded down to the nearest integer.

Input Format


The CITY table is described as follows:
Field  Type
ID     number
Name   varchar2(17)
Countrycode  varchar2(3)
District   varchar2(20)
Population  number

SOLUTION:

select(floor(avg(population))) from city;
