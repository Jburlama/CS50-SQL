CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("date") AS "days_vacant" FROM
"listings" JOIN "availabilities" ON "listings"."id" = "availabilities"."listing_id"
WHERE
"date" BETWEEN '2023-06-01' AND '2023-06-30' AND "available" = 'TRUE'
GROUP BY "listings"."id";
