/*Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:
Field Type
ID    number
City  varchar2(21)
state varchar(2)
lat_n number

Solution:
*/

select truncate(max(lat_n),4) from station where lat_n < 137.2345;
