/*Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

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
select sum(population) from city where countrycode  = 'JPN';
