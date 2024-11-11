CREATE TABLE IF NOT EXISTS passengers(
	"id" INTEGER,
	"first_name" TEXT NOT NULL,
	"last_name" TEXT NOT NULL,
	"age" INTEGER NOT NULL,
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS checkins(
	"id" INTEGER,
	"passenger_id" INTEGER,
	"flight_id" INTEGER,
	"time" TEXT NOT NULL,
	FOREIGN KEY("passenger_id") REFERENCES "passengers"("id")
	FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE IF NOT EXISTS airlines(
	"id" INTEGER,
	"concourse" TEXT check("concourse" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
	PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS flights(
	"id" INTEGER,
	"number" INTEGER,
	"airline_id" INTEGER,
	"departing_code" TEXT,
	"heading_code" TEXT,
	"departure" TEXT,
	"arrival" TEXT,
	PRIMARY KEY ("id"),
	FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);
