SELECT DISTINCT "name", "per_pupil_expenditure" FROM "districts"
JOIN "expenditures" ON
"districts"."id" = "expenditures"."district_id"
WHERE "type" = 'Public School District'
GROUP BY "name"
ORDER BY "per_pupil_expenditure" DESC
LIMIT 10;
