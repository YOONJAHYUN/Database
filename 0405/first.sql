CREATE TABLE users (
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
age INTEGER NOT NULL,
country TEXT NOT NULL,
phone TEXT NOT NULL,
balance INTEGER NOT NULL
);

-- SELECT statement 실습
SELECT first_name,age FROM users;

SELECT * FROM users;

SELECT rowid, first_name FROM users;


-- ORDER BY 실습
SELECT first_name, age FROM users
ORDER BY age DESC;

SELECT first_name, age, balance FROM users
ORDER BY age ASC, balance DESC;


-- SELECT DISTINCT 실습
SELECT DISTINCT first_name, country FROM users
ORDER BY country;

SELECT first_name, age, balance FROM users
WHERE age >= 30 AND balance > 500000;


-- LIKE 실습

SELECT first_name, last_name FROM users
WHERE first_name LIKE '%호%';

SELECT first_name, last_name FROM users
WHERE first_name LIKE '%준';

SELECT first_name, phone FROM users
WHERE phone LIKE '02%';

SELECT first_name, age FROM users
WHERE age LIKE '2_';

-- ___하면 010 011 등 앞에 세자리 인것만 나옴
SELECT first_name, phone FROM users
WHERE phone LIKE '___-51%';

SELECT first_name, phone FROM users
WHERE phone LIKE '%-51__-%';


-- IN 실습

SELECT first_name, country FROM users
WHERE country IN ('경기도','강원도');

SELECT first_name, country FROM users
WHERE country NOT IN ('경기도','강원도');


-- BETWEEN 실습
SELECT first_name, age FROM users
WHERE age BETWEEN 20 AND 30;

SELECT first_name, age FROM users
WHERE age NOT BETWEEN 20 AND 30;


-- LIMIT 실습
SELECT rowid, first_name FROM users
LIMIT 10;

SELECT first_name, balance FROM users
ORDER BY balance DESC
LIMIT 10;

SELECT first_name, age FROM users
ORDER BY age
LIMIT 5;