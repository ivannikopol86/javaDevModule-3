SELECT client.NAME, count(project.ID) AS PROJECT_COUNT  FROM client
LEFT JOIN project ON project.client_id =client.ID
GROUP BY client.NAME
having PROJECT_COUNT =
SELECT max(PROJECT_COUNT) AS project_count FROM (
SELECT client.NAME, count(project.ID) AS PROJECT_COUNT FROM client
LEFT JOIN project ON project.client_id = client.ID
GROUP BY client.NAME)