SELECT c.name AS client_name, COUNT(p.id) as project_count FROM project p
JOIN client c on p.client_id = c.id
GROUP BY c.name;

