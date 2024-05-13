SELECT concat(TEXT('Project '), project.id) AS projectName,
       DATE_PART('year', AGE(finish_data, start_data)) * 12 +
       DATE_PART('month', AGE(finish_data, start_data)) AS months
FROM project
WHERE AGE(finish_data, start_data) = (
    SELECT MAX(AGE(finish_data, start_data))
    FROM project
);
