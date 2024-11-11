SELECT "name", "dropped"
FROM
"schools" JOIN "graduation_rates" ON
"schools"."id" = "graduation_rates"."school_id"
ORDER BY "dropped" DESC
LIMIT 10;
