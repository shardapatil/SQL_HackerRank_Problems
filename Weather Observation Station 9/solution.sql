select distinct city from station where city not REGEXP '^[aeiouAEIOU].*';
