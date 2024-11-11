SELECT "name", "per_pupil_expenditure", "exemplary"
FROM
"districts" JOIN "expenditures" JOIN "staff_evaluations" ON
"districts"."id" = "expenditures"."district_id" AND 
"districts"."id" = "staff_evaluations"."district_id"
WHERE "per_pupil_expenditure" > (
    SELECT AVG("per_pupil_expenditure")
    FROM
    "expenditures"
) AND
"exemplary" > (
    SELECT AVG("exemplary")
    FROM
    "staff_evaluations"
) AND
"name" IN (
	SELECT "name" FROM "districts"
	WHERE
	"type" = 'Public School District'
)
ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;
