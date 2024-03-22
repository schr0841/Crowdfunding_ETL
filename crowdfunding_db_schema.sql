DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE "category" (
    "category_id" VARCHAR(10)   NOT NULL,
    "category" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10)   NOT NULL,
    "subcategory" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR(100)   NOT NULL,
    "goal" DECIMAL   NOT NULL,
    "pledged" DECIMAL   NOT NULL,
    "outcome" VARCHAR(30)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(5)   NOT NULL,
    "currency" VARCHAR(5)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(20)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT NULL,
    PRIMARY KEY ("cf_id"),
	FOREIGN KEY ("category_id") REFERENCES "category"("category_id"),
	FOREIGN KEY ("subcategory_id") REFERENCES "subcategory"("subcategory_id"),
	FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id")
);

---To view tables
SELECT * FROM campaign LIMIT 20;
SELECT * FROM category LIMIT 20;
SELECT * FROM contacts LIMIT 20;
SELECT * FROM subcategory LIMIT 20;