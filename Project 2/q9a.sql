CREATE VIEW not_overriden_fs AS (
    SELECT * FROM takes WHERE grade LIKE 'F'
    );