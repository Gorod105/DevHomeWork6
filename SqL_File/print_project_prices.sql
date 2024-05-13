SELECT
    p.id AS project_id,
    SUM(w.salary * (DATE_PART('year', AGE(finish_data, start_data)) * 12 +
                    DATE_PART('month', AGE(finish_data, start_data)))) AS total_cost
FROM
    project p
        LEFT JOIN
    project_worker pw ON p.id = pw.project_id
        LEFT JOIN
    worker w ON pw.worker_id = w.id
GROUP BY
    p.id;