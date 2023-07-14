SELECT
concat(name,"(",substr(occupation,1,1),")")
FROM occupations ORDER BY name;
SELECT concat('There are a total of ',COUNT(occupation) ,' ' ,LOWER(occupation) , 's' , '.') FROM occupations GROUP BY occupation ORDER BY COUNT(occupation), occupation ASC;
