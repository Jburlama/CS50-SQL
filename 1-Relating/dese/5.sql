SELECT "city", COUNT(DISTINCT "name") FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING COUNT(DISTINCT "name") <= 3
ORDER BY COUNT(DISTINCT "name") DESC, "city";
