--1
SELECT g.name, count(g.name) FROM genre_executor ge
JOIN genre g ON g.id = ge.genre_id 
GROUP BY g.name 
ORDER BY count(g.name) DESC;

--2
SELECT count(t.name) FROM track t
JOIN album a ON t.album_id = a.id
WHERE year >= 2019 AND year <= 2020;

--3
SELECT AVG(duration), a.name FROM track t
JOIN album a ON t.album_id = a.id
GROUP BY a.name
ORDER BY AVG(duration);

--4
SELECT e.name FROM executor e
JOIN executor_album ea ON e.id = ea.executor_id 
JOIN album a ON a.id = ea.album_id 
WHERE e.name NOT IN (SELECT e.name FROM executor e
JOIN executor_album ea ON e.id = ea.executor_id 
JOIN album a ON a.id = ea.album_id 
where year = 2020)
GROUP BY e.name;

--5
SELECT DISTINCT c.name FROM compilation c
JOIN compilation_track ct ON c.id = ct.compilation_id
JOIN track t ON ct.track_id = t.id
JOIN album a ON t.album_id = a.id
JOIN executor_album ea ON a.id = ea.album_id
JOIN executor e ON ea.executor_id = e.id
WHERE e.name = 'Linkin Park';

--6
SELECT a.name, count(*) FROM album a 
JOIN executor_album ea ON a.id = ea.album_id
JOIN executor e ON ea.executor_id = e.id
JOIN genre_executor ge ON e.id = ge.executor_id 
JOIN genre g ON ge.genre_id = g.id
GROUP BY a.name
HAVING count(*) > 1

--7
SELECT t.name, c.name FROM track t
LEFT JOIN compilation_track ct ON t.id = ct.track_id 
LEFT JOIN compilation c ON c.id = ct.compilation_id 
WHERE c.name IS NULL

--8
SELECT duration FROM executor e 
JOIN executor_album ea ON ea.executor_id = e.id 
JOIN album a ON ea.album_id = a.id 
JOIN track t ON t.album_id = a.id
WHERE duration = (SELECT duration FROM executor e 
JOIN executor_album ea ON ea.executor_id = e.id 
JOIN album a ON ea.album_id = a.id 
JOIN track t ON t.album_id = a.id
ORDER BY duration
LIMIT 1);

--9
SELECT album.name an, count(track.name) tn FROM track
JOIN album ON track.album_id = album.id 
GROUP BY album.name
HAVING count(track.name) = (SELECT count(track.name) FROM track
JOIN album ON track.album_id = album.id 
GROUP BY album.name
ORDER BY COUNT(track.name)
LIMIT 1);
