CREATE TABLE meteorites (
	"name" TEXT,
	"id" INTEGER,
	"valid" TEXT,
	"class" TEXT,
	"mass" REAL,
	"discovery" TEXT,
	"year" INTEGER,
	"lat" REAL,
	"long" REAL,
	PRIMARY KEY("id")
);
.import --csv meteorites.csv meteorites


UPDATE "meteorites" SET "mass" = NULL WHERE "mass" = '';
UPDATE "meteorites" SET "year" = NULL WHERE "year" = '';
UPDATE "meteorites" SET "lat" = NULL WHERE "lat" = '';
UPDATE "meteorites" SET "long" = NULL WHERE "long" = '';

UPDATE "meteorites" SET "mass" = ROUND("mass", 2);
UPDATE "meteorites" SET "lat" = ROUND("lat", 2);
UPDATE "meteorites" SET "long" = ROUND("long", 2);

DELETE FROM "meteorites" WHERE "valid" = 'Relict';

CREATE TABLE meteorites_temp (
	"name" TEXT,
	"id" INTEGER,
	"class" TEXT,
	"mass" REAL,
	"discovery" TEXT,
	"year" INTEGER,
	"lat" REAL,
	"long" REAL,
	PRIMARY KEY("id")
);

INSERT INTO "meteorites_temp" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "meteorites"
ORDER BY "year", "name";

DROP TABLE "meteorites";

-- create the table without valid coloum
CREATE TABLE meteorites (
	"name" TEXT,
	"id" INTEGER,
	"class" TEXT,
	"mass" REAL,
	"discovery" TEXT,
	"year" INTEGER,
	"lat" REAL,
	"long" REAL,
	PRIMARY KEY("id")
);

INSERT INTO "meteorites" ("name", "id", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "id", "class", "mass", "discovery", "year", "lat", "long" FROM "meteorites_temp";

DROP TABLE "meteorites_temp";
