SELECT DISTINCT "city", COUNT(DISTINCT "name") FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city" ORDER BY COUNT(DISTINCT "name") DESC, "city" LIMIT 10;
