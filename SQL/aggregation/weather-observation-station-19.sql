/*Consider P1(a, c) and P2(b, d) to be two points on a 2D plane where
(a, b) are the respective minimum and maximum values of Northern Latitude (LAT_N) 
(c, d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.
Input Format

The STATION table is described as follows:

Field Type
ID    number
City  varchar2(21)
state varchar(2)
lat_n number

Solution:
*/

select round(sqrt(power((max(lat_n) - min(lat_n)),2) + power((max(long_w) - min(long_w)),2)),4) from station;

