CREATE TABLE "pembeli" (
  "id" integer PRIMARY KEY,
  "username" varchar NOT NULL,
  "gender" varchar NOT NULL,
  "address" varchar NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT 'now()'
);

CREATE TABLE "barang" (
  "id" integer PRIMARY KEY,
  "name" varchar NOT NULL,
  "price" integer NOT NULL,
  "stock" integer NOT NULL,
  "created_at" timestamp NOT NULL DEFAULT 'now()'
);

CREATE TABLE "transaksi" (
  "id" integer PRIMARY KEY,
  "id_pembeli" integer NOT NULL,
  "id_barang" integer NOT NULL,
  "keterangan" varchar,
  "created_at" timestamp NOT NULL DEFAULT 'now()'
);

ALTER TABLE "transaksi" ADD FOREIGN KEY ("id_pembeli") REFERENCES "pembeli" ("id");

ALTER TABLE "transaksi" ADD FOREIGN KEY ("id_barang") REFERENCES "barang" ("id");

CREATE INDEX ON "transaksi" ("id_pembeli");

CREATE INDEX ON "transaksi" ("id_barang");

CREATE INDEX ON "transaksi" ("id_pembeli", "id_barang");
