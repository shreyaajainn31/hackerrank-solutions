/*Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.
Input Format

The STATION table is described as follows:
Field Type
ID    number
City  varchar2(21)
state varchar(2)
lat_n number
long_w number

Solution:
*/

select round(sum(lat_n),2), round(sum(long_w),2) from station;
