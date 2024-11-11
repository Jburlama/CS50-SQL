
-- *** The Lost Letter ***
SELECT "address", "type" FROM "addresses" WHERE "id" = (
    SELECT "to_address_id" FROM "packages" WHERE "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" = "900 Somerville Avenue")
);

-- *** The Devious Delivery ***
SELECT "contents" FROM "packages" WHERE "from_address_id" IS NULL;

SELECT "address", "type" FROM "addresses" WHERE "id" IN (
    SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND
    "package_id" = (
        SELECT "id" FROM "packages" WHERE "contents" = 'Duck debugger'
    )
);

-- *** The Forgotten Gift ***
SELECT "contents" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
);

SELECT "name" FROM "drivers" WHERE "id" IN (
    SELECT "driver_id" FROM "scans" WHERE "action" = 'Pick' AND
    "package_id" IN (
        SELECT "id" FROM "packages" WHERE "contents" = 'Flowers'
    )
);
