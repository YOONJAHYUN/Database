CREATE TABLE zoo (
  name TEXT NOT NULL,
  eat TEXT NOT NULL,
  weight INT NOT NULL,
  height INT,
  age INT
);


-- 테이블에 데이터 추가
INSERT INTO zoo VALUES 
('gorilla', 'omnivore', 215, 180, 5),
('tiger', 'carnivore', 220, 115, 3),
('elephant', 'herbivore', 3800, 280, 10),
('dog', 'omnivore', 8, 20, 1),
('panda', 'herbivore', 80, 90, 2),
('pig', 'omnivore', 70, 45, 5);


-- weight가 100미만인 데이터는 삭제될랬다가 ROLLBACK 으로 인해 취소
-- 이후 eat 'omnivore'인 데이터는 삭제된다.
BEGIN;
  DELETE FROM zoo
  WHERE weight < 100;
ROLLBACK;
BEGIN;
  DELETE FROM zoo
  WHERE eat = 'omnivore';
COMMIT;


-- 삭제된 3개의 데이터를 뺀 3이 나온다.
SELECT COUNT(*)
FROM zoo;
