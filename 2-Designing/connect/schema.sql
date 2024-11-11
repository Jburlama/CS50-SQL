CREATE TABLE users(
	"id" INTEGER,
	"first_name" TEXT NOT NULL,
	"last_name" TEXT NOT NULL,
	"username" TEXT NOT NULL UNIQUE,
	"password" TEXT NOT NULL,
	"friends" INTEGER,
	"school_id" INTEGER,
	"school_start" TEXT,
	"school_finish" TEXT,
	"degree" TEXT,
	"companie_id" INTEGER,
	"work_start" TEXT,
	"work_finish" TEXT,
	"title" TEXT,
	PRIMARY KEY("id"),
	FOREIGN KEY("school_id") REFERENCES "education"("id"),
	FOREIGN KEY("companie_id") REFERENCES "companies"("id")
);

CREATE TABLE education(
	"id" INTEGER,
	"name" TEXT,
	"type" TEXT,
	"location" TEXT,
	"year" TEXT,
	PRIMARY KEY("id")
);

CREATE TABLE companies(
	"id" INTEGER,
	"name" TEXT,
	"industry" TEXT,
	"location" TEXT,
	PRIMARY KEY("id")
);
