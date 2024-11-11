CREATE VIEW "total" AS
SELECT SUM("families") AS 'familes', SUM("households") AS 'households',
SUM("population") AS 'population', SUM("male") AS 'male', SUM("female") AS 'female'
FROM "census";
