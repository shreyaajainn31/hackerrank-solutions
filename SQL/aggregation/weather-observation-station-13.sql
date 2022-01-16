/*
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:
Field Type
ID    number
City  varchar2(21)
state varchar(2)
lat_n number

Solution:
*/

select truncate(sum(lat_n),4) from station where lat_n > 38.7880 and lat_n < 137.2345;
