CREATE TABLE zoo (
  name TEXT NOT NULL,
  eat TEXT NOT NULL,
  weight INT NOT NULL,
  height INT,
  age INT
);

-- 1) 
-- 칼럼명을 표기하지 않아 순서대로 들어갔다.
INSERT INTO zoo VALUES 
(5, 180, 210, 'gorilla', 'omnivore');

-- 1) 해결방법1
-- 칼럼명을 표기
INSERT INTO zoo (age, weight, height, name, eat)
VALUES (5, 180, 210, 'gorilla', 'omnivore');

-- 1) 해결방법2
-- 칼럼명과 같은 순서로 INSERT
INSERT INTO zoo
VALUES ('gorilla', 'omnivore',180, 210,5);


-- 2)
-- 중복된 rowid로 추가됨
-- 중복안되게 수정
INSERT INTO zoo (rowid, name, eat, weight, age) VALUES
(10,'dolphin', 'carnivore', 210, 3),
(11, 'alligator', 'carnivore', 250, 50);

-- 3)
-- NOT NULL인 weight 추가하지 않음 -> 추가해준다.
INSERT INTO zoo (name, eat, age, weight) VALUES
('dolphin', 'carnivore', 3, 200);