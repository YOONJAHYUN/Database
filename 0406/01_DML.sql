-- users table 생성
CREATE TABLE users (
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country TEXT NOT NULL,
    phone TEXT NOT NULL,
    balance INTEGER NOT NULL
);

SELECT COUNT(*) FROM users;

SELECT avg(balance) FROM users;

SELECT country, avg(balance) FROM users
WHERE country = '전라북도';

SELECT country, avg(balance) FROM users
GROUP BY country ORDER BY avg(balance) DESC;

-- 나이가 30살 이상인 사람들의 평균 나이
SELECT avg(age) FROM users
WHERE age >= 30;

SELECT country, COUNT(*) FROM users
GROUP BY country;

-- 각 성씨가 몇 명씩?
SELECT last_name, COUNT(*) AS number_of_name FROM users
GROUP BY last_name ORDER BY COUNT(*) DESC;

-- CHANGING 

CREATE TABLE classmates (
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    address TEXT NOT NULL
);

INSERT INTO classmates (name, age, address)
VALUES ('윤자현',26,'부산');

INSERT INTO classmates
VALUES
    ('이가영', 26, '서울'),
    ('정수완', 26, '통영'),
    ('김예진', 26, '울산');

-- UPDATE
UPDATE classmates
SET name='김철수한무두루미', address='제주도'
WHERE rowid = 2;

UPDATE classmates
SET age=27
WHERE rowid = 3 ;

-- DELETE
DELETE FROM classmates
WHERE rowid=4;

