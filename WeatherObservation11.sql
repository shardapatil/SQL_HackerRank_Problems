-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
select distinct city from station where city not regexp '^[aeiou]' or city not regexp '[aeiou]$';
