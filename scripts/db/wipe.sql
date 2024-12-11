-- Wipe all data
DROP TABLE events;
DROP TABLE places;

-- Reset sequences for consistent IDs
-- ALTER SEQUENCE events_id_seq RESTART WITH 1;
-- ALTER SEQUENCE places_id_seq RESTART WITH 1;
