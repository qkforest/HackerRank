SELECT CONCAT(NAME, 
        CASE
        WHEN OCCUPATION = 'Doctor' THEN '(D)'
        WHEN OCCUPATION = 'Actor' THEN '(A)'
        WHEN OCCUPATION = 'Professor' THEN '(P)'
        Else '(S)'
        END)
FROM OCCUPATIONS
ORDER BY NAME;
SELECT CONCAT('There are a total of ',COUNT(NAME),' ' , LOWER(OCCUPATION), 's.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(NAME), OCCUPATION;