CREATE SEQUENCE company_id_seq MINVALUE 1;
CREATE TABLE company (
	id INT4 DEFAULT nextval('company_id_seq') PRIMARY KEY,
	
	name text,
	donation int,

	passwd text,

	power int,
	network int,

	primary_contact int,
	resume_contact int,

	attendees int[]
);

CREATE UNIQUE INDEX company_id_key ON company(id);

GRANT all ON company TO conf2000;
