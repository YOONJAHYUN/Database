CREATE TABLE users (
first_name TEXT NOT NULL,
last_name TEXT NOT NULL,
age INTEGER NOT NULL,
address TEXT NOT NULL,
phoneNumber TEXT NOT NULL,
balance INTEGER NOT NULL
);

INSERT INTO users (
first_name, last_name, age, address, phoneNumber, balance)
VALUES (
'가영', '이', 20, '부산', '010-7523-4534', 10);

SELECT * FROM users;

--이름, 나이, 재산 만 users 테이블에서 가지고 온다
--나이는 오름차순, 잔고는 내림차순
--한글도 정렬됨
SELECT first_name, age, balance FROM users
ORDER BY age, balance DESC;

--이름이 건우인 사람의 이름과 나이만 표기
SELECT first_name, age FROM users
WHERE first_name = '건우';

--이름이 가-바 사이에 들어가는 사람 표기
SELECT first_name, age FROM users
WHERE first_name BETWEEN '가' AND '바'
ORDER BY first_name;