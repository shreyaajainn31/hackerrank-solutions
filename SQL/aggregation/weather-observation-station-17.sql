/*Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to  decimal places.

Input Format

The STATION table is described as follows:
Field Type
ID    number
City  varchar2(21)
state varchar(2)
lat_n number

Solution:

*/

select round(long_w, 4) from station where lat_n = (select min(lat_n) from station where lat_n > 38.7780);
