SELECT
    MAX(CASE WHEN OCCUPATION = "Doctor" THEN NAME END) AS 'DOCTOR',
    MAX(CASE WHEN OCCUPATION = "Professor" THEN NAME END) AS 'PROFESSOR',
    MAX(CASE WHEN OCCUPATION = "Singer" THEN NAME END) AS 'SINGER',
    MAX(CASE WHEN OCCUPATION = "Actor" THEN NAME END) AS 'ACTOR'
FROM (SELECT *, ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) RN
FROM OCCUPATIONS) TEMP
GROUP BY RN