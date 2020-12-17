--CREAR TABLAS
CREATE TABLE customers (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT NULL,
  email     VARCHAR(120) NOT NULL,
  address   VARCHAR(120),
  city      VARCHAR(30),
  postcode  VARCHAR(12),
  country   VARCHAR(20)
);

CREATE TABLE hotels (
  id               SERIAL PRIMARY KEY,
  customer_id      INT REFERENCES customers(id),
  name      	   VARCHAR(30) NOT NULL,
  rooms            INT NOT NULL,
  postcode         VARCHAR(12)
);

CREATE TABLE bookings (
  id               SERIAL PRIMARY KEY,
  customer_id      INT REFERENCES customers(id),
  hotel_id         INT REFERENCES hotels(id),
  checkin_date     DATE NOT NULL,
  nights           INT NOT NULL
);

INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('John Smith','j.smith@johnsmith.org','11 New Road','Liverpool','L10 2AB','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Joanna S','j.s@js.org','20 Old Road','Liverpool','L10 2AB','UK');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Triple Point Hotel', 10, 'CM194JS');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Royal Cosmos Hotel', 5, 'TR209AX');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Pacific Petal Motel', 15, 'CM194JS');
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 1, '2019-10-01', 2);

INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('John Smith','j.smith@johnsmith.org','11 New Road','Liverpool','L10 2AB','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Sue Jones','s.jones1234@gmail.com','120 Old Street','London','N10 3CD','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Alice Evans','alice.evans001@hotmail.com','3 High Road','Manchester','m13 4ef','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Mohammed Trungpa','mo.trungpa@hotmail.com','25 Blue Road','Manchester','M25 6GH','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Steven King','steve.king123@hotmail.com','19 Bed Street','Newtown', 'xy2 3ac','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Nadia Sethuraman','nadia.sethuraman@mail.com','135 Green Street','Manchester','M10 4BG','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Melinda Marsh','mel.marsh-123@gmail.com','7 Preston Road','Oldham','OL3 5XZ','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('MartÃn Sommer','martin.sommer@dfgg.net','C/ Romero, 33','Madrid','28016','Spain');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Laurence Lebihan','laurence.lebihan@xmzx.net','12, rue des Bouchers','Marseille','13008','France');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Keith Stewart','keith.stewart@gmail.com','84 Town Lane','Tadworth','td5 7ng','UK');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Golden Cavern Resort', 10, 'L10ABC');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Elder Lake Hotel', 5, 'L10ABC');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Pleasant Mountain Hotel', 7, 'ABCDE1');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Azure Crown Resort & Spa', 18, 'DGQ127');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Jade Peaks Hotel', 4, 'DGQ127');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Elegant Resort', 14, 'DGQ127');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Cozy Hotel', 20, 'AYD189');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Snowy Echo Motel', 15, 'AYD189');
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 1, '2019-10-01', 2);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 1, '2019-12-10', 6);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 3, '2019-07-20', 4);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (2, 3, '2020-03-10', 4);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (2, 5, '2020-04-01', 1);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (3, 1, '2019-11-01', 1);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (3, 2, '2019-11-23', 2);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (4, 8, '2019-12-23', 3);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (4, 2, '2019-09-16', 5);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (6, 5, '2019-09-14', 2);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (6, 6, '2020-01-14', 5);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (8, 4, '2020-02-01', 3);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (8, 5, '2020-01-03', 7);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (8, 8, '2019-12-25', 4);

--Retrieve all information for the customer Laurence Lebihan.
SELECT * FROM customers WHERE name = 'Laurence Lebihan';


--RELLENAR TABLAS
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('John Smith','j.smith@johnsmith.org','11 New Road','Liverpool','L10 2AB','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Joanna S','j.s@js.org','20 Old Road','Liverpool','L10 2AB','UK');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Triple Point Hotel', 10, 'CM194JS');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Royal Cosmos Hotel', 5, 'TR209AX');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Pacific Petal Motel', 15, 'CM194JS');
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 1, '2019-10-01', 2);
SELECT * FROM customers;
SELECT name,address FROM customers;
SELECT * FROM hotels WHERE rooms > 7;
SELECT name,address FROM customers WHERE id = 1;
SELECT * FROM bookings WHERE checkin_date > '2019/10/01';
SELECT * FROM bookings WHERE checkin_date > '2019/10/01' AND nights >= 2;
SELECT * FROM hotels WHERE postcode = 'CM194JS' OR postcode = 'TR209AX';
drop table if exists bookings;
drop table if exists hotels;
drop table if exists customers;
CREATE TABLE customers (
  id       SERIAL PRIMARY KEY,
  name     VARCHAR(30) NOT NULL,
  email    VARCHAR(120) NOT NULL,
  address  VARCHAR(120),
  city     VARCHAR(30),
  postcode VARCHAR(12),
  country  VARCHAR(20)
);
CREATE TABLE hotels (
  id       SERIAL PRIMARY KEY,
  name     VARCHAR(120) NOT NULL,
  rooms    INT NOT NULL,
  postcode VARCHAR(10)
);
CREATE TABLE bookings (
  id            SERIAL PRIMARY KEY,
  customer_id   INT REFERENCES customers(id),
  hotel_id      INT REFERENCES hotels(id),
  checkin_date  DATE NOT NULL,
  nights        INT NOT NULL
);
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('John Smith','j.smith@johnsmith.org','11 New Road','Liverpool','L10 2AB','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Sue Jones','s.jones1234@gmail.com','120 Old Street','London','N10 3CD','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Alice Evans','alice.evans001@hotmail.com','3 High Road','Manchester','m13 4ef','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Mohammed Trungpa','mo.trungpa@hotmail.com','25 Blue Road','Manchester','M25 6GH','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Steven King','steve.king123@hotmail.com','19 Bed Street','Newtown', 'xy2 3ac','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Nadia Sethuraman','nadia.sethuraman@mail.com','135 Green Street','Manchester','M10 4BG','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Melinda Marsh','mel.marsh-123@gmail.com','7 Preston Road','Oldham','OL3 5XZ','UK');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('MartÃn Sommer','martin.sommer@dfgg.net','C/ Romero, 33','Madrid','28016','Spain');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Laurence Lebihan','laurence.lebihan@xmzx.net','12, rue des Bouchers','Marseille','13008','France');
INSERT INTO customers (name, email, address, city, postcode, country) VALUES ('Keith Stewart','keith.stewart@gmail.com','84 Town Lane','Tadworth','td5 7ng','UK');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Golden Cavern Resort', 10, 'L10ABC');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Elder Lake Hotel', 5, 'L10ABC');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Pleasant Mountain Hotel', 7, 'ABCDE1');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Azure Crown Resort & Spa', 18, 'DGQ127');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Jade Peaks Hotel', 4, 'DGQ127');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Elegant Resort', 14, 'DGQ127');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Cozy Hotel', 20, 'AYD189');
INSERT INTO hotels (name, rooms, postcode) VALUES ('Snowy Echo Motel', 15, 'AYD189');
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 1, '2019-10-01', 2);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 1, '2019-12-10', 6);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (1, 3, '2019-07-20', 4);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (2, 3, '2020-03-10', 4);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (2, 5, '2020-04-01', 1);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (3, 1, '2019-11-01', 1);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (3, 2, '2019-11-23', 2);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (4, 8, '2019-12-23', 3);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (4, 2, '2019-09-16', 5);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (6, 5, '2019-09-14', 2);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (6, 6, '2020-01-14', 5);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (8, 4, '2020-02-01', 3);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (8, 5, '2020-01-03', 7);
INSERT INTO bookings (customer_id, hotel_id, checkin_date, nights) VALUES (8, 8, '2019-12-25', 4);
--Retrieve all information for the customer Laurence Lebihan.
SELECT * FROM customers WHERE name = 'Laurence Lebihan';
--Retrieve all customers name living in UK.
select name from customers where country = 'UK';
--Retrieve the address, city and postcode of Melinda Marsh.
select address, city, postcode from customers c where c."name" = 'Melinda Marsh';
--Retrieve all hotels located in the postcode DGQ127.
select * from hotels where postcode = 'DGQ127';
--Retrieve all hotels with more than 11 rooms.
select * from hotels where rooms > 11;
--Retrieve all hotels with more than 6 rooms but less than 15 rooms.
select * from hotels where rooms > 6 and rooms < 15;
--Retrieve all hotels with exactly 10 rooms or 20 rooms.
select * from hotels where rooms = 10 or rooms = 20;
--Retrieve all bookings for customer id 1.
select * from bookings b where b.customer_id = 1;
--Retrieve all bookings for more than 4 nights.
select * from bookings b where b.nights > 4;
--Retrieve all bookings starting in 2020.
select * from bookings b where b.checkin_date >= '2020-01-01';
--Retrieve all bookings before 2020 for less than 4 nights.
select * from bookings b where b.checkin_date <= '2020-01-01' and b.nights < 4;


drop table if exists mentors;

CREATE TABLE mentors (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT NULL,
  city_years INT,
  tech_skills VARCHAR(20),
  address   VARCHAR(120)
);

INSERT INTO mentors (name, city_years, tech_skills, address) VALUES ('John Smith', 10,'javascript', '11 New Road, Glasgow');
INSERT INTO mentors (name, city_years, tech_skills, address) VALUES ('Sue Jones', 5, 'python', '120 Old Street, Glasgow');
INSERT INTO mentors (name, city_years, tech_skills, address) VALUES ('Alice Evans', 8, 'php', '3 High Road, Glasgow');
INSERT INTO mentors (name, city_years, tech_skills, address) VALUES ('Steven King', 10, 'postgresql', '19 Bed Street, Glasgow');
INSERT INTO mentors (name, city_years, tech_skills, address) VALUES ('Becky Brown', 1, 'postgresql', '12, rue des Bouchers, Glasgow');

drop table if exists students;

CREATE TABLE STUDENTS (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(30) NOT null unique,
  address   VARCHAR(30),
  graduated_cyf     Boolean not NULL
);

INSERT INTO students (name, address, graduated_cyf) VALUES ('Alfonso', 'Castillejos 382', TRUE);
INSERT INTO students (name, address, graduated_cyf) VALUES ('Pedro', 'New Road 13', FALSE);
INSERT INTO students (name, address, graduated_cyf) VALUES ('Arthur', 'Good Road 12', FALSE);
INSERT INTO students (name, address, graduated_cyf) VALUES ('Sara', 'Parallel 12', TRUE);
INSERT INTO students (name, address, graduated_cyf) VALUES ('Zaquiel', 'Oxford Road 1', TRUE);
INSERT INTO students (name, address, graduated_cyf) VALUES ('Isaac', 'Rutherford Street', FALSE);
INSERT INTO students (name, address, graduated_cyf) VALUES ('Claudia', 'Calle Valecia', FALSE);
INSERT INTO students (name, address, graduated_cyf) VALUES ('Marta', 'Calle Madrid 13', TRUE);
INSERT INTO students (name, address, graduated_cyf) VALUES ('Juan', 'New York Street', TRUE);
INSERT INTO students (name, address, graduated_cyf) VALUES ('Alberto', 'Calle del Rey', FALSE);

SELECT * FROM students WHERE graduated_cyf = FALSE;

drop table if exists classes;

CREATE TABLE classes (
  id        SERIAL PRIMARY KEY,
  leading_mentor     INT REFERENCES mentors(id),
  topic   VARCHAR(30) unique,
  date     date not null,
  location varchar(30) not null,
  attendees   int references students(id)
);

INSERT INTO classes (leading_mentor, topic, date, location, attendees) VALUES (1, 'javascript',  '2018-11-28', '11 New Road, Glasgow', 1);
INSERT INTO classes (leading_mentor, topic, date, location, attendees) VALUES (2, 'HTML',  '2020-11-28', 'Barcelona', 2);


CREATE TABLE course (
  id        SERIAL PRIMARY KEY,
  topic_course     INT REFERENCES classes(topic),
  student_name    INT REFERENCES students(name)
);



