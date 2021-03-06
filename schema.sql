-- department:

-- id - INT PRIMARY KEY
-- name - VARCHAR(30) to hold department name

DROP DATABASE IF EXISTS company1_db;
CREATE DATABASE company1_db;

USE company1_db;

CREATE TABLE dept
(
  id INT NOT NULL AUTO_INCREMENT,
  nameindept VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

-- role:

-- id - INT PRIMARY KEY
-- title - VARCHAR(30) to hold role title
-- salary - DECIMAL to hold role salary
-- department_id - INT to hold reference to department role belongs to


CREATE TABLE roles
(
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(7,2) NOT NULL,
  deptid INT NOT NULL,
   PRIMARY KEY (id)
);


-- employee:

-- id - INT PRIMARY KEY
-- first_name - VARCHAR(30) to hold employee first name
-- last_name - VARCHAR(30) to hold employee last name
-- role_id - INT to hold reference to role employee has
-- manager_id - INT to hold reference to another employee that manager of the current employee. This field may be null if the employee has no manager

CREATE TABLE employee
(
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NOT NULL,
   PRIMARY KEY (id)
);