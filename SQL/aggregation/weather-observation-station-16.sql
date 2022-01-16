/*Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to  decimal places.

Input Format

The STATION table is described as follows:
Field Type
ID    number
City  varchar2(21)
state varchar(2)
lat_n number

Solution:
*/

select round(min(lat_n), 4) from station where lat_n > 38.7780;
