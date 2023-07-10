select city.Name from city 
join country on CITY.CountryCode = COUNTRY.Code
where CONTINENT  = 'Africa'
