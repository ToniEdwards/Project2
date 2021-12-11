-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/mmG5z3
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "job_title" (
    "job_code" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_job_title" PRIMARY KEY (
        "job_code"
     )
);

CREATE TABLE "education" (
    "job_code" VARCHAR   NOT NULL,
    "work_experience" TEXT   NOT NULL,
    "education" TEXT   NOT NULL,
    "training" TEXT   NOT NULL,
    CONSTRAINT "pk_education" PRIMARY KEY (
        "job_code"
     )
);

CREATE TABLE "salary" (
    "job_code" VARCHAR   NOT NULL,
    "salary_category" VARCHAR   NOT NULL,
    "statewide" INT   NOT NULL,
    "abilene" INT   NOT NULL,
    "amarillo" INT   NOT NULL,
    "austin" INT   NOT NULL,
    "beaumont" INT   NOT NULL,
    "brownsville" INT   NOT NULL,
    "college_station" INT   NOT NULL,
    "corpus_christi" INT   NOT NULL,
    "dallas" INT   NOT NULL,
    "el_paso" INT   NOT NULL,
    "houston" INT   NOT NULL,
    "killeen" INT   NOT NULL,
    "laredo" INT   NOT NULL,
    "longview" INT   NOT NULL,
    "lubbock" INT   NOT NULL,
    "mcallen" INT   NOT NULL,
    "midland" INT   NOT NULL,
    "odessa" INT   NOT NULL,
    "san_angelo" INT   NOT NULL,
    "san_antonio" INT   NOT NULL,
    "sherman" INT   NOT NULL,
    "texarkana" INT   NOT NULL,
    "tyler" INT   NOT NULL,
    "victoria" INT   NOT NULL,
    "waco" INT   NOT NULL,
    "wichita_falls" INT   NOT NULL
);

CREATE TABLE "projections" (
    "job_code" VARCHAR   NOT NULL,
    "employment" INT   NOT NULL,
    "projections" INT   NOT NULL,
    "absolute_change" INT   NOT NULL,
    "percent_change" DEC   NOT NULL,
    "avg_annual_openings" INT   NOT NULL,
    CONSTRAINT "pk_projections" PRIMARY KEY (
        "job_code"
     )
);

ALTER TABLE "education" ADD CONSTRAINT "fk_education_job_code" FOREIGN KEY("job_code")
REFERENCES "job_title" ("job_code");

ALTER TABLE "salary" ADD CONSTRAINT "fk_salary_job_code" FOREIGN KEY("job_code")
REFERENCES "job_title" ("job_code");

ALTER TABLE "projections" ADD CONSTRAINT "fk_projections_job_code" FOREIGN KEY("job_code")
REFERENCES "job_title" ("job_code");

