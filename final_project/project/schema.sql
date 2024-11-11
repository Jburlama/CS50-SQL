-- Represent the menu
CREATE TABLE "menu" (
	"id" INTEGER,
	"dish" TEXT NOT NULL,
	"type" TEXT NOT NULL,
	"price" NUMERIC NOT NULL,
	PRIMARY KEY("id")
);

-- Represent the dishes sold
CREATE TABLE "sold" (
	"bill_number" INTEGER NOT NULL,
	"dish_id" INTEGER,
	"date" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY("dish_id") REFERENCES "menu"("id")
);

-- Represent the total bill for each costumer
CREATE VIEW "total_bill" AS 
SELECT "bill_number", SUM("price") AS 'price', "date"
FROM "menu" JOIN "sold"
ON "menu"."id" = "sold"."dish_id"
GROUP BY "bill_number";

-- Represents each employe in the restaurant and how much it gets payed by the houre
CREATE TABLE "employes" (
	"id" INTEGER,
	"name" TEXT NOT NULL,
	"hour_pay" REAL NOT NULL,
	"role" TEXT,
	PRIMARY KEY("id")
);

-- Represents how may houres each employe worked at a given day
CREATE TABLE "work_time" (
	"employer_id" INTEGER,
	"day" TEXT NOT NULL,
	"start" TEXT NOT NULL,
	"end" TEXT NOT NULL,
	FOREIGN KEY("employer_id") REFERENCES "employes"("id")
);
