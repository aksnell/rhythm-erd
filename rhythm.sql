CREATE TABLE "Albums" (
    "Id" SERIAL,
    "Title" TEXT NOT NULL,
    "IsExplicit" BOOL,
    "ReleaseDate" DATE,
    "BandID" INT,
);

CREATE TABLE "Bands" (
    "Id" SERIAL,
    "Name" TEXT,
    "CountyOfOrigin" CHAR(3), -- ISO County Code
    "Website" TEXT,
    "Style" TEXT,
    "IsSigned" BOOL,
    "ContactName" TEXT,
    "ContactPhoneNumber" BIGINT
)

INSERT INTO "Bands" VALUES
    (DEFAULT, 'Streelight Manifesto', 'USA', 'streetlightmanifesto.com', 'Ska', TRUE, DEFAULT, DEFAULT)

SELECT * FROM "Bands"

INSERT INTO "Albums" VALUES
    (DEFAULT, 'Album Title', TRUE, '01/01/01', (SELECT "Id" FROM "Bands" WHERE "Name" = 'Streetlight Manifesto'));

UPDATE "Bands"
SET "IsSigned" = FALSE
WHERE "Name" = 'Streelight Manifoest'

UPDATE "Bands"
SET "IsSigned" = TRUE
WHERE "Name" = 'Streelight Manifoest'

SELECT "Albums".* 
FROM "Albums" 
JOIN "Bands" ON "Albums"."BandID" = "Bands"."Id"

SELECT *
FROM "Albums"
ORDER BY "ReleaseDate"

SELECT *
FROM "Bands"
WHERE "IsSigned"

SELECT *
FROM "Bands"
WHERE NOT "IsSigned"
