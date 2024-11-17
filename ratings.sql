/* CREDIT SCORES */				
CREATE TABLE IF NOT EXISTS creditscores (				
ID        SERIAL        ,				
creditscores_ID	VARCHAR(30)	NOT NULL	UNIQUE	,
creditscores_attributes	JSON	NULL		,
creditscores_reference	VARCHAR(30)	NOT NULL		,
creditscores_reportdate	TIMESTAMP	NOT NULL		,
creditscores_type	VARCHAR(255)	NOT NULL		,
creditscores_cra1	bytea	NULL		,
creditscores_cra2	bytea	NULL		,
creditscores_cra3	bytea	NULL		,
creditscores_access	VARCHAR(30)	NOT NULL	DEFAULT 'public'	,
creditscores_status	VARCHAR(30)	NOT NULL	DEFAULT 'active'	,
user_ID	VARCHAR(30)	NOT NULL		,
app_ID	VARCHAR(30)	NOT NULL		,
event_ID	VARCHAR(30)	NOT NULL		,
process_ID	VARCHAR(30)	NOT NULL		,
time_started	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
time_updated	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
time_finished	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
active	INT	NOT NULL	DEFAULT 1	,
);				
				
SELECT * FROM	creditscores;			
DROP TABLE	creditscores;			
				
CREATE SEQUENCE	creditscores_sequence;			
ALTER SEQUENCE	creditscores_sequence RESTART WITH 8301;			
ALTER TABLE	creditscores ALTER COLUMN ID SET DEFAULT nextval('creditscores_sequence');			
				
ALTER TABLE	ALTER TABLE creditscores ADD FOREIGN KEY (user_ID) REFERENCES user (user_ID);			
ALTER TABLE	ALTER TABLE creditscores ADD FOREIGN KEY (app_ID) REFERENCES app (app_ID);			

INSERT INTO creditscores (
creditscores_ID,
creditscores_attributes,
creditscores_reference,
creditscores_reportdate,
creditscores_type,
creditscores_cra1,
creditscores_cra2,
creditscores_cra3,
creditscores_access,
creditscores_status,
user_ID,
app_ID,
event_ID,
process_ID,
active
) VALUES (
'score_54663',
'{}',
'30 Characters',
'05/24/2024',
'255 Characters',
'{}',
'{}',
'{}',
'access_54663',
'status_54663',
'user_54663',
'app_54663',
'event_54663',
'process_54663',
1
);

SELECT * FROM creditscores;