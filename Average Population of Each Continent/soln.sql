select co.Continent, floor(avg(c.population)) from city c
join country co on c.CountryCode = co.Code
group by co.Continent;
