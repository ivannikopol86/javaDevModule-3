SELECT
    CONCAT('project',project.id) AS NAME,
    SUM(worker.SALARY *DATEDIFF(MONTH, project.start_date, project.finish_date)) AS PRICE
FROM project_worker
    left join worker on worker.id = project_worker.worker_id
    left join project on project.id = project_worker.project_id
GROUP BY NAME
ORDER BY PRICE desc