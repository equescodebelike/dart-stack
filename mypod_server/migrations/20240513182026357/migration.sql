BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "category" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "order" (
    "id" serial PRIMARY KEY,
    "orderDate" timestamp without time zone NOT NULL,
    "customerId" integer NOT NULL,
    "addresss" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "order_part" (
    "id" serial PRIMARY KEY,
    "productId" integer NOT NULL,
    "amount" integer NOT NULL,
    "orderId" integer NOT NULL,
    "status" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "product" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "units" text NOT NULL,
    "minSize" integer NOT NULL,
    "cost" double precision NOT NULL,
    "categoryId" integer NOT NULL,
    "shopId" integer NOT NULL,
    "imageUrl" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "password" text NOT NULL,
    "phone" text NOT NULL,
    "imageUrl" text NOT NULL
);


--
-- MIGRATION VERSION FOR mypod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mypod', '20240513182026357', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240513182026357', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
