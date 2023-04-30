-- 1.
  SELECT SUM(amount) from hardware;
-- 2. 
  SELECT * FROM hardware WHERE amount = 0;
-- 3.
  SELECT AVG(price) FROM hardware where title like '%монитор%';
-- 4.
SELECT * FROM hardware WHERE title LIKE '%Клавиатура%'
order by price asc
;
-- 5.
SELECT tag, count(*)
FROM hardware
GROUP BY tag
ORDER BY tag DESC;
-- 6.
select title, tag from hardware
where tag like '%discount%'
;
-- 7.
SELECT hardware.title, hardware.price
FROM hardware
WHERE hardware.tag = 'new'
ORDER BY hardware.price DESC
LIMIT 1;
-- 8.
INSERT INTO `hardware` (`title`, `price`, `amount`, `tag`) 
VALUES
  ('Ноутбук Lenovo 2BXKQ7E9XD', '54500', '1', 'new');
  -- 9.
  DELETE FROM hardware WHERE id IN (18);