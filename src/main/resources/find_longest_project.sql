SELECT CONCAT('Project ',id) AS NAME, DATEDIFF(MONTH, start_date, finish_date) AS month_count FROM project
GROUP BY ID
HAVING month_count = (
SELECT max(DATEDIFF(MONTH, start_date, finish_date)) FROM project)