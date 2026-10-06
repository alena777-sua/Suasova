SELECT d.name, e.event_time, e.event_type, e.value FROM devices d JOIN events e ON d.device_id = e.device_id WHERE d.device_id = 1 ORDER BY e.event_time;
SELECT event_type, COUNT(*) AS количество FROM events GROUP BY event_type;
SELECT d.name, COUNT() AS количество_ошибок FROM devices d JOIN events e ON d.device_id = e.device_id WHERE e.event_type = 'ошибка' GROUP BY d.device_id, d.name HAVING COUNT() > 1;
SELECT d.name, MAX(e.event_time) AS последнее_событие FROM devices d JOIN events e ON d.device_id = e.device_id GROUP BY d.device_id, d.name;
SELECT d.name FROM devices d LEFT JOIN events e ON d.device_id = e.device_id AND e.event_type = 'ошибка' WHERE e.event_id IS NULL;
