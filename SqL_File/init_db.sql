CREATE TYPE worker_level AS ENUM ('Trainee', 'Junior', 'Middle', 'Senior');

CREATE SEQUENCE IF NOT EXISTS seq_worker_id
    START WITH 1
    INCREMENT BY 1;

CREATE SEQUENCE IF NOT EXISTS seq_client_id
    START WITH 1
    INCREMENT BY 1;
CREATE SEQUENCE IF NOT EXISTS seq_project_id
    START WITH 1
    INCREMENT BY 1;

CREATE TABLE IF NOT EXISTS worker
(
    id BIGINT DEFAULT nextval('seq_worker_id'),
    name VARCHAR (1000) CHECK ( length(name) > 2 ) NOT NULL ,
    birthsday DATE CHECK ( birthsday > '01-01-1900' ),
    level worker_level,
    salary INT CHECK ( salary>100 and salary<100000 ),
    CONSTRAINT pk_customers_id PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS client
(
    id BIGINT DEFAULT nextval('seq_client_id'),
    name VARCHAR (1000) CHECK ( length(name) > 2 ) NOT NULL,
    CONSTRAINT pk_client_id PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS project
(
    id BIGINT DEFAULT nextval('seq_project_id'),
    client_id BIGINT,
    start_data DATE DEFAULT now(),
    finish_data DATE,
    CONSTRAINT pk_project_id PRIMARY KEY (id),
    CONSTRAINT fk_client_id FOREIGN KEY (client_id) references client (id)

);
CREATE TABLE IF NOT EXISTS project_worker
(
    project_id BIGINT,
    worker_id BIGINT,
    CONSTRAINT fk_project_id FOREIGN KEY (project_id) references project (id),
    CONSTRAINT fk_worker_id FOREIGN KEY (worker_id) references worker (id),
    CONSTRAINT pk_project_worker_id PRIMARY KEY (project_id, worker_id)
);

CREATE INDEX project_worker_project_idx ON project_worker(project_id);
CREATE INDEX project_worker_worker_idx ON project_worker(worker_id);
CREATE INDEX project_client_id_idx ON project(client_id);
