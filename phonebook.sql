CREATE TABLE address (address_id,city,street,house,app);
CREATE TABLE person (person_id,first_name,last_name,birth_date,sex,address);
CREATE TABLE tel_number (tel_id,phone_number,person);

INSERT INTO address (address_id,city,street,house,app) VALUES (1,'Kiev','Zodchih str.',32,197);
INSERT INTO address (address_id,city,street,house,app) VALUES (2,'Kiev','Zodchih str.',32,208);
INSERT INTO address (address_id,city,street,house,app) VALUES (3,'Lviv','Lesi Ukrainki str.',26,54);
INSERT INTO address (address_id,city,street,house) VALUES (4,'Fastiv','Kirova pr.',3);
INSERT INTO address (address_id,city,street,house,app) VALUES (5,'Ukrainka','Lenina sq.','13a',2);

INSERT INTO person (person_id,first_name,last_name,birth_date,sex,address) VALUES (1,'Max','Sidorov','7/05/46','male',1);
INSERT INTO person (person_id,first_name,last_name,birth_date,sex,address) VALUES (2,'Svetlana','Orlova','29/08/86','female',1);
INSERT INTO person (person_id,first_name,last_name,birth_date,sex,address) VALUES (3,'Elena','Voytenko','6/06/39','female',2);
INSERT INTO person (person_id,first_name,last_name,birth_date,sex,address) VALUES (4,'Max','Petrov','1/12/56','male',3);
INSERT INTO person (person_id,first_name,last_name,birth_date,sex,address) VALUES (5,'Sergey','Ivanov','1/02/03','male',4);
INSERT INTO person (person_id,first_name,last_name,birth_date,sex,address) VALUES (6,'Irina','Sasaga','3/05/77','male',5);

INSERT INTO tel_number (tel_id,phone_number,person) VALUES (1,'0504478965',1);
INSERT INTO tel_number (tel_id,phone_number,person) VALUES (2,'0504488453',2);
INSERT INTO tel_number (tel_id,phone_number,person) VALUES (3,'0932888892',2);
INSERT INTO tel_number (tel_id,phone_number,person) VALUES (4,'0667786984',3);
INSERT INTO tel_number (tel_id,phone_number,person) VALUES (5,'0501234567',4);

.header ON
SELECT * FROM address;
SELECT * FROM person;
SELECT * FROM tel_number;
SELECT tel_id,phone_number FROM tel_number;
SELECT * FROM address WHERE city LIKE 'Kiev';
SELECT * FROM address,person WHERE person_id=3;
SELECT * FROM address,person WHERE house=32;
SELECT * FROM address,person WHERE address=address.address_id;
SELECT first_name,last_name,phone_number FROM address,person,tel_number WHERE address=address.address_id AND  person=person_id AND city='Kiev';
SELECT COUNT(*) FROM person;










