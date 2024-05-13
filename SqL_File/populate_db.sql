
INSERT INTO worker (name, birthsday, level, salary)
VALUES
    ('Michael Smith', '1990-01-01', 'Trainee', 30000),
    ('Emily Johnson', '1990-01-11', 'Trainee', 31000),
    ('Daniel Brown', '1990-01-21', 'Trainee', 32000),
    ('Olivia Davis', '1990-01-31', 'Trainee', 33000),
    ('Matthew Wilson', '1990-02-10', 'Trainee', 34000),
    ('Sophia Moore', '1990-02-20', 'Junior', 35000),
    ('Christopher Taylor', '1990-03-02', 'Junior', 36000),
    ('Emma Anderson', '1990-03-12', 'Junior', 37000),
    ('Jacob Martinez', '1990-03-22', 'Junior', 38000),
    ('Isabella Jackson', '1990-04-01', 'Junior', 39000),
    ('William White', '1990-04-11', 'Middle', 40000),
    ('Ava Harris', '1990-04-21', 'Middle', 41000),
    ('Ethan Thomas', '1990-05-01', 'Middle', 42000),
    ('Mia Clark', '1990-05-11', 'Middle', 43000),
    ('Alexander King', '1990-05-21', 'Middle', 44000),
    ('James Lee', '1990-06-01', 'Senior', 45000),
    ('Charlotte Baker', '1990-06-11', 'Senior', 46000),
    ('Ryan Hill', '1990-06-21', 'Senior', 47000),
    ('Abigail Green', '1990-07-01', 'Senior', 48000),
    ('Daniel Adams', '1990-07-11', 'Senior', 49000);

INSERT INTO client (name)
VALUES
    ('Tech Solutions Inc.'),
    ('Green Energy Corp.'),
    ('Global Marketing Group'),
    ('Financial Dynamics Ltd.'),
    ('Healthcare Innovations LLC'),
    ('Creative Media Agency'),
    ('Smart Logistics Services'),
    ('Innovative Software Solutions'),
    ('Eco-Friendly Manufacturing Co.'),
    ('Wellness Enterprises');

INSERT INTO project (client_id, start_data, finish_data)
VALUES
    (1, '2024-01-01', '2025-09-01'),
    (2, '2024-02-01', '2025-09-01'),
    (3, '2024-03-01', '2025-09-01'),
    (4, '2024-04-01', '2025-09-01'),
    (5, '2024-05-01', '2025-09-01'),
    (6, '2024-06-01', '2025-09-01'),
    (7, '2024-07-01', '2025-09-01'),
    (8, '2024-08-01', '2025-09-01'),
    (9, '2024-09-01', '2025-09-01'),
    (10, '2024-10-01', '2025-09-01'),
    (1, '2024-11-01', '2025-09-01'),
    (2, '2024-12-01', '2025-09-01'),
    (3, '2025-01-01', '2025-09-01'),
    (4, '2025-02-01', '2025-09-01'),
    (5, '2025-03-01', '2025-09-01'),
    (6, '2025-04-01', '2025-09-01'),
    (7, '2025-05-01', '2025-09-01'),
    (8, '2025-06-01', '2025-09-01'),
    (9, '2025-07-01', '2025-09-01'),
    (10, '2025-08-01', '2025-09-01');

INSERT INTO project_worker (project_id, worker_id)
VALUES
    (7, 1), (10, 2), (3, 3), (12, 4), (6, 5),
    (8, 6), (1, 7), (20, 8), (13, 9), (11, 10),
    (2, 11), (5, 12), (16, 13), (18, 14), (14, 15),
    (19, 16), (9, 17), (15, 18), (4, 19), (17, 20);