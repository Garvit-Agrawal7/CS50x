SELECT name FROM (SELECT * FROM songs ORDER BY duration_ms DESC) LIMIT 5;