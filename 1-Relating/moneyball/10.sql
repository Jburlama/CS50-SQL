SELECT "first_name", "last_name", "salary", "HR", "performances"."year"
FROM "players" JOIN "salaries" JOIN "performances" ON
"players"."id" = "salaries"."player_id" AND "salaries"."year" = "performances"."year" AND "players"."id" = "performances"."player_id"
ORDER BY "players"."id", "performances"."year" DESC, "HR" DESC, "salary" DESC;
