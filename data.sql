INSERT INTO doctor (doc_id, doc_identifier, doc_firstname, doc_lastname, doc_field) VALUES
('d3152f64-72dc-45ce-9a7e-7d3a3fd6daf2','7d3a3fd6daf2','Martin','Maischer','Neurochirurg')
,('b4eb41e1-df5e-414b-81f7-2a7de0807b9d','2a7de0807b9d','Susanne','Seisel','Kinderärztin')
,('c1fff034-3f0a-426a-a716-10ec3561b3ae','10ec3561b3ae','Peter','Lustig','Therapeut')
,('51abf52a-ed95-4f4c-9c00-f680f507981c','f680f507981c','Anton','Austin','Allgemeinarzt')
,('a053ca81-1e36-433b-b754-9276684cb0aa','9276684cb0aa','Linus','Trovald','Facharzt')
;

INSERT INTO nurse (nurse_id, nurse_identifier, nurse_firstname, nurse_lastname) VALUES
('1d4b3fe5-ff39-44a2-a439-1ac045523a16','1ac045523a16','Monika','Mandel')
,('7d46b32e-29a4-4e22-9a11-b85c0fdf8af0','b85c0fdf8af0','Verona','Vase')
,('9f583d02-4186-4e15-b750-98e67591b142','98e67591b142','Anton','Alp')
,('475cc9ab-edb0-4aca-ba15-ec47c93bd32e','ec47c93bd32e','Bertha','Beuer')
,('4a560808-909f-474c-bc13-9ea3dc6f5bd9','9ea3dc6f5bd9','Chrissi','Chlemens')
;

INSERT INTO patient
(pat_id, pat_doc_id, pat_identifier, pat_firstname, pat_lastname, pat_care_concept_name, pat_comment)
VALUES
 ('36ecaaa5-4122-43ec-a83b-7fc319fdf469','d3152f64-72dc-45ce-9a7e-7d3a3fd6daf2','7fc319fdf469','Frank','Patient','IRENA Neuro','First Demo Patient')
,('fd75a52b-e9eb-4955-9fd9-e9fa7852d59e','b4eb41e1-df5e-414b-81f7-2a7de0807b9d','e9fa7852d59e','Peter','Patient','Ortho','Second Demo Patient')
,('b4dacf3d-bd78-406e-8449-7347de0018dd','b4eb41e1-df5e-414b-81f7-2a7de0807b9d','848DA7F3F3D7B38D','Tony','Dancer','Prävention','Third Demo Patient (new process version 2)')
,('1340034a-4e67-44a8-8684-a6d4de7b8b8e','c1fff034-3f0a-426a-a716-10ec3561b3ae','19F9C1A9C121B528','Monika','Melone','IRENA Neuro',NULL)
,('3ed09136-ebec-4de9-b38e-a3f55a10ec45','a053ca81-1e36-433b-b754-9276684cb0aa','E2C4E7D30460B788','Franz','Feedback','IRENA Neuro',NULL)
,('76b3f06e-089e-463b-9c7f-850ee7848623','c1fff034-3f0a-426a-a716-10ec3561b3ae','682C344D1BB3B108','Paul','Patient','Prävention',NULL)
,('66774946-2e74-4bed-b813-12a0c78a5aa2','b4eb41e1-df5e-414b-81f7-2a7de0807b9d','95E70B1E6C8B8020','Berta','Betini','Ortho',NULL)
;

INSERT INTO nurse_patients (nurse_id, pat_id) VALUES
('1d4b3fe5-ff39-44a2-a439-1ac045523a16','36ecaaa5-4122-43ec-a83b-7fc319fdf469')
,('7d46b32e-29a4-4e22-9a11-b85c0fdf8af0','fd75a52b-e9eb-4955-9fd9-e9fa7852d59e')
,('9f583d02-4186-4e15-b750-98e67591b142','b4dacf3d-bd78-406e-8449-7347de0018dd')
,('475cc9ab-edb0-4aca-ba15-ec47c93bd32e','1340034a-4e67-44a8-8684-a6d4de7b8b8e')
,('4a560808-909f-474c-bc13-9ea3dc6f5bd9','1340034a-4e67-44a8-8684-a6d4de7b8b8e')
;

INSERT INTO patient_history (phi_id,phi_pat_id,phi_short_entry,phi_text_entry,created_by,created_at,updated_by,updated_at) VALUES 
('b3fe45d9-f28b-4d74-88f0-7acd068535c9','1340034a-4e67-44a8-8684-a6d4de7b8b8e','PatientCallAttempt','Tried to reach the patient 1 times without success.','system','2020-09-08 10:24:00.767','system','2020-09-08 10:24:00.767')
,('9ea3265e-2c3d-4961-a5d0-72f9fd628586','3ed09136-ebec-4de9-b38e-a3f55a10ec45','DocumentPatientCall','Patient reached... "Call Documenentation": Patient wants more information','system','2020-09-08 10:26:04.991','system','2020-09-08 10:26:04.991')
,('2e939b24-986f-47ed-be8c-0c58a01a9dc0','1340034a-4e67-44a8-8684-a6d4de7b8b8e','PatientCallAttempt','Tried to reach the patient 2 times without success.','system','2020-09-08 10:27:19.594','system','2020-09-08 10:27:19.594')
,('033bb426-7149-4f8b-ac29-6b56c6ac4094','1340034a-4e67-44a8-8684-a6d4de7b8b8e','PatientCallAttempt','Tried to reach the patient 3 times without success.','system','2020-09-08 10:30:26.472','system','2020-09-08 10:30:26.472')
,('30f58f01-bcd6-4013-92a5-8658c533a72f','1340034a-4e67-44a8-8684-a6d4de7b8b8e','SendEMail','Email sent to patient ID: 19F9C1A9C121B528 (Monika Melone)','system','2020-09-08 10:30:26.821','system','2020-09-08 10:30:26.821')
,('498f2f9b-377a-4fc2-a206-a6cb3ec57e69','1340034a-4e67-44a8-8684-a6d4de7b8b8e','PatientCallAttempt','Tried to reach the patient 4 times without success.','system','2020-09-08 10:33:25.338','system','2020-09-08 10:33:25.338')
,('f65d6e52-e7f8-4c75-b072-aa592abf76a8','1340034a-4e67-44a8-8684-a6d4de7b8b8e','SendSMS','SMS sent to patient ID: 19F9C1A9C121B528 (Monika Melone)','system','2020-09-08 10:33:26.031','system','2020-09-08 10:33:26.031')
,('fea8107a-aa40-45ef-982a-99a3ee78e5cc','1340034a-4e67-44a8-8684-a6d4de7b8b8e','PatientCallAttempt','Tried to reach the patient 5 times without success.','system','2020-09-08 10:37:23.371','system','2020-09-08 10:37:23.371')
;