CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE doctor (
	doc_id uuid NOT NULL DEFAULT uuid_generate_v4(),
	doc_identifier varchar(20) NOT NULL,
	doc_firstname varchar(20),
	doc_lastname varchar(20),
	doc_field varchar(40),
	CONSTRAINT doctor_pk PRIMARY KEY (doc_id)
);

CREATE TABLE nurse (
	nurse_id uuid NOT NULL DEFAULT uuid_generate_v4(),
	nurse_identifier varchar(20) NOT NULL,
	nurse_firstname varchar(20),
	nurse_lastname varchar(20),
	CONSTRAINT nurse_pk PRIMARY KEY (nurse_id)
);

CREATE TABLE patient (
	pat_id uuid NOT NULL DEFAULT uuid_generate_v4(),
	pat_doc_id uuid NOT NULL,
	pat_identifier varchar(20) NOT NULL,
	pat_firstname varchar(20),
	pat_lastname varchar(20),
	pat_care_concept_name varchar(50),
	pat_comment text,
	CONSTRAINT patient_pk PRIMARY KEY (pat_id)
);

CREATE TABLE nurse_patients (
	nurse_id uuid NOT NULL,
	pat_id uuid NOT NULL,
	FOREIGN KEY (nurse_id) REFERENCES nurse(nurse_id),
	FOREIGN KEY (pat_id) REFERENCES patient(pat_id),
	PRIMARY KEY (nurse_id, pat_id)
);

CREATE TABLE patient_history (
	phi_id uuid NOT NULL DEFAULT uuid_generate_v4(),
	phi_pat_id uuid NOT NULL,
	phi_short_entry varchar(100),	
	phi_text_entry text,
	created_by     varchar(50) NOT NULL DEFAULT 'system'::character varying,
    created_at     timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_by     varchar(50) DEFAULT 'system'::character varying,
    updated_at     timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT history_pk PRIMARY KEY (phi_id)
);

ALTER TABLE public.patient ADD CONSTRAINT doctor_patient_doc_fk FOREIGN KEY (pat_doc_id) REFERENCES doctor(doc_id);

ALTER TABLE public.patient_history ADD CONSTRAINT patient_history_pat_fk FOREIGN KEY (phi_pat_id) REFERENCES patient(pat_id);