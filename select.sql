SELECT DISTINCT name_musician, composition
FROM musicians;

SELECT COUNT(musician_id), COUNT(producer_id)
FROM musicians;

SELECT COUNT(DISTINCT pr_id)
FROM musicians;

SELECT musician_id, name_musician, producer_id
FROM musicians
WHERE producer_id IS NULL;

SELECT musician_id, name_musician, pr_id, media_id, composition
FROM musicians
WHERE pr_id = '3' OR (media_id = '1' AND composition IS NULL)
ORDER BY musician_id DESC
LIMIT 10;

SELECT musician_id, name_musician
FROM musicians
WHERE name_musician LIKE 'M%';

SELECT media_id
FROM musicians
UNION
SELECT media_id
FROM medias;

SELECT name_musician, composition, lawyer_id
FROM musicians
LEFT publicJOIN lawyers USING(lawyer_id)
ORDER BY lawyers.lawyer_id DESC