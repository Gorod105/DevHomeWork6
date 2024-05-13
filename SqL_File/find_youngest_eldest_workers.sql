SELECT 'YOUNGEST' AS type,name AS worker_name, birthsday FROM worker
WHERE
    birthsday = (SELECT MIN(birthsday) FROM worker) UNION ALL

SELECT 'OLDEST' AS type,name AS worker_name , birthsday FROM worker
WHERE
    birthsday = (SELECT MAX(birthsday) FROM worker);

