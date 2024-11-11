CREATE TABLE ingredients (
	"id"  INTEGER,
	"donut_id" INTEGER,
	"name" TEXT,
	"price" REAL,
	PRIMARY KEY("id"),
	FOREIGN KEY("donut_id") REFERENCES "donut"("id")
);

CREATE TABLE donuts(
	"id" INTEGER,
	"name" TEXT,
	"gluten" TEXT,
	"price" REAL,
	PRIMARY KEY("id")
);

CREATE TABLE orders(
	"number" INTEGER,
	"donut_id" INTEGER,
	"custumer_id" INTEGER,
	FOREIGN KEY("donut_id") REFERENCES "donut"("id"),
	FOREIGN KEY("custumer_id") REFERENCES "custumers"("id")
);

CREATE TABLE custumers(
	"id" INTEGER,
	"first_name" TEXT,
	"last_name" TEXT,
	"order" INTEGER,
	PRIMARY KEY("id"),
	FOREIGN KEY("order") REFERENCES "orders"("number")
);
