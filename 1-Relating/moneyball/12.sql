WITH "salary_per_hit" AS (
	SELECT "first_name", "last_name", "salaries"."salary" / "performances"."H"
	FROM "players" JOIN "salaries"
	ON "players"."id" = "salaries"."player_id"
	JOIN "performances"
	ON "players"."id" = "performances"."player_id"
	AND "performances"."year" = "salaries"."year"
	WHERE "H" > 0 AND "performances"."year" = 2001
	ORDER BY "salaries"."salary" / "performances"."H"
	LIMIT 10
),
"salary_per_rbg" AS (
	SELECT "first_name", "last_name", "salaries"."salary" / "performances"."RBI"
	FROM "players" JOIN "salaries"
	ON "players"."id" = "salaries"."player_id"
	JOIN "performances"
	ON "players"."id" = "performances"."player_id"
	AND "performances"."year" = "salaries"."year"
	WHERE "RBI" > 0 AND "performances"."year" = 2001
	ORDER BY "salaries"."salary" / "performances"."RBI"
	LIMIT 10
)
SELECT "first_name", "last_name" FROM "salary_per_hit"
INTERSECT
SELECT "first_name", "last_name" FROM "salary_per_rbg"
ORDER BY "last_name";
