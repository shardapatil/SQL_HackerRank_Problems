You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks

![image](https://github.com/shardapatil/SQL_HackerRank_Problems/assets/53011896/e399d7ca-d42b-4405-94d8-71f04214887e)

Grades contains the following data:

![image](https://github.com/shardapatil/SQL_HackerRank_Problems/assets/53011896/127c7833-d22a-46ab-97cb-bf34fd77666c)

Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

Sample Input

![image](https://github.com/shardapatil/SQL_HackerRank_Problems/assets/53011896/e0f8d602-e75f-4758-a086-259dfdebc370)

Sample Output

Maria 10 99
Jane 9 81
Julia 9 88 
Scarlet 8 78
NULL 7 63
NULL 7 68

Note

Print "NULL"  as the name if the grade is less than 8.

Explanation

Consider the following table with the grades assigned to the students:

![image](https://github.com/shardapatil/SQL_HackerRank_Problems/assets/53011896/15bfb12e-4e49-4dc5-89f3-d5684cadd8d5)

So, the following students got 8, 9 or 10 grades:

Maria (grade 10)
Jane (grade 9)
Julia (grade 9)
Scarlet (grade 8)

## Solution

```
select case when g.Grade >= 8 then s.Name
        else null end, Grade, Marks
from Students s,Grades g
WHERE s.MARKS BETWEEN g.MIN_MARK AND g.MAX_MARK
order by g.grade desc, s.name

```
