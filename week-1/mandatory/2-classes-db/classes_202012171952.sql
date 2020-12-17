-- classes definition

-- Drop table

-- DROP TABLE classes;

CREATE TABLE classes
(
    id serial PRIMARY KEY,
    leading_mentor int4 NULL,
    topic varchar(30) NULL,
    "date" date NOT NULL,
    "location" varchar(30) NOT NULL,
    attendees int4 NULL,
    CONSTRAINT classes_topic_key UNIQUE (topic)
);


-- classes foreign keys

ALTER TABLE classes ADD CONSTRAINT classes_attendees_fkey FOREIGN KEY (attendees) REFERENCES students(id);
ALTER TABLE classes ADD CONSTRAINT classes_leading_mentor_fkey FOREIGN KEY (leading_mentor) REFERENCES mentors(id);