CREATE TABLE contacts (
name TEXT NOT NULL,
age INTEGER NOT NULL,
email TEXT NOT NULL UNIQUE
);

--세미콜론 없으면 no query error
ALTER TABLE contacts RENAME TO new_contacts;
ALTER TABLE new_contacts RENAME TO contacts;
