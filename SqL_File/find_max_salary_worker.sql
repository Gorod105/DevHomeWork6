SELECT w.name AS worker_name,w.salary FROM worker w
WHERE salary = (SELECT MAX(salary) FROM worker);