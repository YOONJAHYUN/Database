CREATE TABLE users(
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INTEGER NOT NULL,
  address TEXT NOT NULL,
  phonenumber TEXT NOT NULL,
  balance INTEGER NOT NULL
);

SELECT first_name, age, balance FROM users
ORDER BY age ASC, balance DESC;
