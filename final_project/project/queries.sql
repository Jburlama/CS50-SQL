-- Find all the deserts
SELECT *
FROM "menu"
WHERE "type" = 'desert';

-- Find all the starters
SELECT *
FROM "menu"
WHERE "type" = 'starter';

-- Find all the meat dishes
SELECT *
FROM "menu"
WHERE "type" = 'meat';

-- Find the total price for the bills
SELECT "bill_number", SUM("price")
FROM "menu" JOIN "sold"
ON "menu"."id" = "sold"."dish_id"
GROUP BY "bill_number";

-- Find the total bills sold from a givem time
SELECT "price" FROM "total_bill"
GROUP BY "date";


-- Add item to menu
INSERT INTO "menu" ("dish", "type", "price")
VALUES
('bread', 'starter', 1.20),
('shrimp', 'starter', 5.80),
('soup', 'starter', 8.0),
('cod', 'fish', 14.0),
('salmon', 'fish', 19.0),
('beaf', 'meat', 15.0),
('pork', 'meat', 14.0),
('hamburquer', 'meat', 17.0),
('tofu', 'vegi', 17.0),
('cake', 'desert', 8.0),
('muse', 'desert', 9.0);

-- items sold for each bill
INSERT INTO "sold" ("bill_number", "dish_id")
VALUES
(1, 1),
(1, 6),
(1, 10),
(2, 2),
(2, 7),
(2, 11);

-- employe in the restaurant
INSERT INTO "employes" ("name", "hour_pay", "role")
VALUES
("paco", 10.0, "chef"),
("rita", 5.5, "cook"),
("sergio", 5.5, "tables"),
("joao", 4.7, "tables"),
("maria", 5, "cook");

-- what time each employer enter and left work
INSERT INTO "work_time" ("employer_id", "day", "start", "end")
VALUES
(1, "1-11-2024", "9:00", "18:00"),
(2, "1-11-2024", "11:30", "18:00"),
(3, "1-11-2024", "9:00", "18:00"),
(4, "1-11-2024", "10:45", "16:00"),
(5, "1-11-2024", "16:00", "19:00");
