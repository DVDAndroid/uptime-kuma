-- You should not modify if this have pushed to Github, unless it does serious wrong with the db.
BEGIN TRANSACTION;

ALTER TABLE monitor_notification
    ADD type TEXT default 'both';

COMMIT;

BEGIN TRANSACTION;

UPDATE monitor_notification
SET type = 'both'
WHERE type IS NULL;

COMMIT;
