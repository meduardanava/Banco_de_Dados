CREATE TABLE employees(
	
	id int generated always as identity,
	first_name varchar(40) not null,
	last_name varchar(40) not null,
	primary key(id)
);

CREATE TABLE employee_audits(
	
	id int generated always as identity,
	employee_id int not null,
	last_name varchar(40) not null,
	changed_on TIMESTAMP(6) not null
);

CREATE OR REPLACE FUNCTION log_last_name_changes()
 RETURNS TRIGGER
 LANGUAGE PLPGSQL
AS
$$
BEGIN
	IF NEW.last_name<>OLD.last_name THEN
		INSERT INTO employee_audits(employee_id, last_name, changed_on)
		VALUES (OLD.id, OLD.last_name, now());
	END IF;
	RETURN NEW;
END;
$$

CREATE TRIGGER last_name_changes
 BEFORE UPDATE
 ON employees
 FOR EACH ROW
 EXECUTE PROCEDURE log_last_name_changes();
 
INSERT INTO employees(first_name,last_name)
	 VALUES ('John','Doe');
INSERT INTO employees(first_name,last_name)
	 VALUES ('Lyli', 'Bush');

Select * 
	from employees;
	
UPDATE employees
	SET last_name = 'Brown' 
	WHERE id = 2;
	
Select *
	from employees;

Select *
	from employee_audits;