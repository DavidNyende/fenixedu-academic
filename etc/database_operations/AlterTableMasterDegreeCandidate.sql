ALTER TABLE MASTER_DEGREE_CANDIDATE ADD COLUMN TEACHER_KEY int(11) default NULL;
ALTER TABLE MASTER_DEGREE_CANDIDATE ADD COLUMN COURSE_ASSISTANT int(1) not NULL default '0';
ALTER TABLE MASTER_DEGREE_CANDIDATE ADD COLUMN COURSES_TO_ASSIST text default NULL;
ALTER TABLE MASTER_DEGREE_CANDIDATE ADD COLUMN HAS_GUIDER int(1) not NULL default '0';