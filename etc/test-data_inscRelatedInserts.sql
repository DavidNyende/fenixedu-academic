#-----------------------------
# Data for table 'COUNTRY'
#-----------------------------
DELETE FROM COUNTRY;
INSERT INTO COUNTRY VALUES (63,'Portugal', 'Portuguesa', 'PT');
INSERT INTO COUNTRY VALUES (64,'Inglaterra', 'Inglesa', 'UK');


#-----------------------------
# Data for table 'PERSON'
#-----------------------------
DELETE FROM PERSON;
INSERT INTO PERSON VALUES (1, 123456789, 'Lisboa', '2002-10-12', '2002-10-12','Nome da Pessoa',
                           '2002-10-12', 'Nome do Pai', 'Nome da Mae', 'Portuguesa',
                           'Freguesia', 'Concelho', 'Distrito', 'Morada', 'localidade',
                           '1700-200', 'l200', 'frequesia morada', 'concelho morada',
                           'distrito morada', '214443523', '96546321', 's@h.c','http',
                           '9876543210', 'Profissao', 'user',MD5("pass"), 63,
                           '9786453120', 1, 1, 1);
INSERT INTO PERSON VALUES (2, 9876543210, 'Lisboa', '2002-10-12', '2002-10-12','Jorge',
                           '2002-10-12', 'Nome do Pai', 'Nome da Mae', 'Portuguesa',
                           'Freguesia', 'Concelho', 'Distrito', 'Morada', 'localidade',
                           '1700-200', 'l200', 'frequesia morada', 'concelho morada',
                           'distrito morada', '214443523', '96546321', 's@h.c','http',
                           '9876543210', 'Profissao', 'jorge',MD5("a"), 63,
                           '9876543210', 1, 1, 1);
INSERT INTO PERSON VALUES (3, 1111111111, 'Lisboa', '2002-10-12', '2002-10-12','Nome da Pessoa',
                           '2002-10-12', 'Nome do Pai', 'Nome da Mae', 'Portuguesa',
                           'Freguesia', 'Concelho', 'Distrito', 'Morada', 'localidade',
                           '1700-200', 'l200', 'frequesia morada', 'concelho morada',
                           'distrito morada', '214443523', '96546321', 's@h.c','http',
                           '1111111111', 'Profissao', '3',MD5("pass"), 63,
                           '1111111111', 1, 1, 1);
INSERT INTO PERSON VALUES (4, 2222222222, 'Lisboa', '2002-10-12', '2002-10-12','Jorge',
                           '2002-10-12', 'Nome do Pai', 'Nome da Mae', 'Portuguesa',
                           'Freguesia', 'Concelho', 'Distrito', 'Morada', 'localidade',
                           '1700-200', 'l200', 'frequesia morada', 'concelho morada',
                           'distrito morada', '214443523', '96546321', 's@h.c','http',
                           '2222222222', 'Profissao', '4',MD5("a"), 63,
                           '2222222222', 1, 1, 1);
INSERT INTO PERSON VALUES (5, 3333333333, 'Lisboa', '2002-10-12', '2002-10-12','Nome da Pessoa',
                           '2002-10-12', 'Nome do Pai', 'Nome da Mae', 'Portuguesa',
                           'Freguesia', 'Concelho', 'Distrito', 'Morada', 'localidade',
                           '1700-200', 'l200', 'frequesia morada', 'concelho morada',
                           'distrito morada', '214443523', '96546321', 's@h.c','http',
                           '3333333333', 'Profissao', '45498',MD5("pass"), 63,
                           '3333333333', 1, 1, 1);
                           
INSERT INTO PERSON VALUES (6, 4444444, 'Lisboa', '2002-10-12', '2005-11-1','Nuno',
                           '1979-5-12', 'Manuel', 'Maria', 'Portuguesa',
                           'Freguesia Nuno', 'Concelho Nuno', 'Distrito Nuno', 'Morada Nuno', 'localidade Nuno',
                           '1700-200', 'l200', 'frequesia morada Nuno', 'concelho morada Nuno',
                           'distrito morada Nuno', '214443523', '96546321', 's12@h.c','http123',
                           '4444444444', 'Profissao', 'nmsn',MD5("pass"), 63,
                           '4444444444', 1, 1, 1);

INSERT INTO PERSON VALUES (7, 55555555, 'Lisboa', "2002-10-12", "2005-11-1",'Joana',
                           "1979-5-12", 'Manuel joao', 'Maria Joana', 'Portuguesa',
                           'Freguesia Joana', 'Concelho Joana', 'Distrito Joana', 'Morada Joana', 'localidade Joana',
                           '1700-200', 'l200', 'frequesia morada Joana', 'concelho morada Joana',
                           'distrito morada Joana', '214443523', '96546321', 's13@h.c','http1234',
                           '5555555555', 'Profissao', 'jccm',MD5("pass"), 63,
                           '5555555555', 1, 2, 1);

#-----------------------------
# Data for table 'ROLE'
#-----------------------------
delete from ROLE;
insert into ROLE (ID_INTERNAL, ROLE_TYPE, PORTAL_SUB_APPLICATION, PAGE, PAGE_NAME_PROPERTY) values (1,1,'/person','/index.do','portal.person');
insert into ROLE (ID_INTERNAL, ROLE_TYPE, PORTAL_SUB_APPLICATION, PAGE, PAGE_NAME_PROPERTY) values (2,2,'/student','/index.do','portal.student');
insert into ROLE (ID_INTERNAL, ROLE_TYPE, PORTAL_SUB_APPLICATION, PAGE, PAGE_NAME_PROPERTY) values (3,3,'/teacher','/index.do','portal.teacher');
insert into ROLE (ID_INTERNAL, ROLE_TYPE, PORTAL_SUB_APPLICATION, PAGE, PAGE_NAME_PROPERTY) values (4,4,'/sop','/paginaPrincipal.jsp','portal.sop');
insert into ROLE (ID_INTERNAL, ROLE_TYPE, PORTAL_SUB_APPLICATION, PAGE, PAGE_NAME_PROPERTY) values (5,5,'/candidato','/index.do','portal.candidate');

#-----------------------------
# Data for table 'PERSON_ROLE'
#-----------------------------
delete from PERSON_ROLE;
insert into PERSON_ROLE (ID_INTERNAL, KEY_ROLE, KEY_PERSON) values (1,1,1);
insert into PERSON_ROLE (ID_INTERNAL, KEY_ROLE, KEY_PERSON) values (2,4,1);
insert into PERSON_ROLE (ID_INTERNAL, KEY_ROLE, KEY_PERSON) values (3,3,1);
insert into PERSON_ROLE (ID_INTERNAL, KEY_ROLE, KEY_PERSON) values (4,1,6);
insert into PERSON_ROLE (ID_INTERNAL, KEY_ROLE, KEY_PERSON) values (5,5,6);
insert into PERSON_ROLE (ID_INTERNAL, KEY_ROLE, KEY_PERSON) values (6,1,7);
insert into PERSON_ROLE (ID_INTERNAL, KEY_ROLE, KEY_PERSON) values (7,5,7);

#-----------------------------
# Data for table 'PRIVILEGIO'
#-----------------------------
DELETE FROM PRIVILEGIO;
INSERT INTO PRIVILEGIO VALUES (1, 'CriarSala',1);
INSERT INTO PRIVILEGIO VALUES (1, 'CriarAula',2);
INSERT INTO PRIVILEGIO VALUES (1, 'LerDisciplinasExecucaoDeLicenciaturaExecucaoEAnoCurricular',3);
INSERT INTO PRIVILEGIO VALUES (1, 'LerLicenciaturas',4);
INSERT INTO PRIVILEGIO VALUES (1, 'LerLicenciatura',5);
INSERT INTO PRIVILEGIO VALUES (1, 'LerLicenciaturaExecucaoDeLicenciatura',6);
INSERT INTO PRIVILEGIO VALUES (1, 'LerTurmas',7);
INSERT INTO PRIVILEGIO VALUES (1, 'LerSalas',8);
INSERT INTO PRIVILEGIO VALUES (1, 'CriarTurno',9);
INSERT INTO PRIVILEGIO VALUES (1, 'LerTurnosDeDisciplinaExecucao',10);
INSERT INTO PRIVILEGIO VALUES (1, 'LerAulasDeDisciplinaExecucaoETipo',11);
INSERT INTO PRIVILEGIO VALUES (1, 'ApagarAula',12);
INSERT INTO PRIVILEGIO VALUES (1, 'EditarAula',13);
INSERT INTO PRIVILEGIO VALUES (1, 'CriarTurma',14);
INSERT INTO PRIVILEGIO VALUES (1, 'ApagarTurma',15);
INSERT INTO PRIVILEGIO VALUES (1, 'EditarTurma',16);
INSERT INTO PRIVILEGIO VALUES (1, 'LerAulasDeTurma',17);
INSERT INTO PRIVILEGIO VALUES (1, 'LerTurma',18);
INSERT INTO PRIVILEGIO VALUES (1, 'ApagarTurno',19);
INSERT INTO PRIVILEGIO VALUES (1, 'LerAulasDeTurno',20);
INSERT INTO PRIVILEGIO VALUES (1, 'EditarTurno',21);
INSERT INTO PRIVILEGIO VALUES (1, 'RemoverAula',22);
INSERT INTO PRIVILEGIO VALUES (1, 'AdicionarAula',23);
INSERT INTO PRIVILEGIO VALUES (1, 'LerTurnosDeTurma',24);
INSERT INTO PRIVILEGIO VALUES (1, 'AdicionarTurno',25);
INSERT INTO PRIVILEGIO VALUES (1, 'RemoverTurno',26);
INSERT INTO PRIVILEGIO VALUES (5, 'ReadStudent',27);
INSERT INTO PRIVILEGIO VALUES (1, 'LerAlunosDeTurno', 28);
INSERT INTO PRIVILEGIO VALUES (5, 'StudentShiftEnrollment', 29);
INSERT INTO PRIVILEGIO VALUES (5, 'ReadShiftEnrolment',30);
INSERT INTO PRIVILEGIO VALUES (5, 'ReadShiftsByTypeFromExecutionCourse',31);
INSERT INTO PRIVILEGIO VALUES (5, 'LerAlunosDeTurno',32);
INSERT INTO PRIVILEGIO VALUES (5, 'StudentShiftEnrolment',33);
INSERT INTO PRIVILEGIO VALUES (5, 'ReadStudentLessons',34);
INSERT INTO PRIVILEGIO VALUES (5, 'ReadShiftLessons',35);
INSERT INTO PRIVILEGIO VALUES (5, 'ReadDisciplinesByStudent',36);
INSERT INTO PRIVILEGIO VALUES (5, 'ReadStudentByUsername',37);
INSERT INTO PRIVILEGIO VALUES (5, 'ReadCourseByStudent',38);
INSERT INTO PRIVILEGIO VALUES (5, 'ObterData',39);
INSERT INTO PRIVILEGIO VALUES (5, 'ReadOtherCoursesWithShifts',40);
INSERT INTO PRIVILEGIO VALUES (1, 'CriarSala',41);
INSERT INTO PRIVILEGIO VALUES (1, 'ApagarSala',42);
INSERT INTO PRIVILEGIO VALUES (1, 'LerSala',43);
INSERT INTO PRIVILEGIO VALUES (1, 'EditarSala',44);
INSERT INTO PRIVILEGIO VALUES (1, 'LerAulasDeDisciplinaExecucao',45);
INSERT INTO PRIVILEGIO VALUES (1, 'LerTurno',46);
INSERT INTO PRIVILEGIO VALUES (1, 'LerAula',47);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadCourseByStudent',48);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadDisciplinesByStudent',49);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadShiftLessons',50);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadShiftsByTypeFromExecutionCourse',51);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadStudent',52);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadStudentByUsername',53);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadStudentLessons',54);
INSERT INTO PRIVILEGIO VALUES (1, 'StudentShiftEnrolment',55);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadClassesWithShiftService', 56);
INSERT INTO PRIVILEGIO VALUES (1, 'RemoveTeacher', 57);
INSERT INTO PRIVILEGIO VALUES (1, 'AssociateTeacher', 58);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadAnnouncements', 59);
INSERT INTO PRIVILEGIO VALUES (1, 'ReadExamsByDayAndBeginning', 60);

#-----------------------------
# Data for table 'EXECUTION_DEGREE'
#-----------------------------
DELETE FROM EXECUTION_DEGREE;
INSERT INTO EXECUTION_DEGREE VALUES (11, 1, 1, 8, '2002/03');
INSERT INTO EXECUTION_DEGREE VALUES (10, 2, 2, 9, '2003/04');


#-----------------------------
# Data for table 'CLASS'
#-----------------------------
DELETE FROM CLASS;
INSERT INTO CLASS VALUES (12,'10501',1,1,11, 8, 1);
INSERT INTO CLASS VALUES (13,'14501',1,1,10, 9, 1);
INSERT INTO CLASS VALUES (14,'turma413',1,1,11, 8, 1);
INSERT INTO CLASS VALUES (15,'turma414',1,1,11, 8, 1);
INSERT INTO CLASS VALUES (16,'turmaParaTestarInscricoesDeAlunos1',2,1,10, 8, 1);
INSERT INTO CLASS VALUES (17,'turmaParaTestarInscricoesDeAlunos2',1,1,11, 8, 1);


#-----------------------------
# Data for table 'SHIFT'
#-----------------------------
DELETE FROM SHIFT;
INSERT INTO SHIFT VALUES (1,'turno1',24,1,100);
INSERT INTO SHIFT VALUES (2,'turno2',24,1,100);
INSERT INTO SHIFT VALUES (3,'turno453',24,1,100);
INSERT INTO SHIFT VALUES (4,'turno454',24,1,100);
INSERT INTO SHIFT VALUES (5,'turno455',24,2,100);
INSERT INTO SHIFT VALUES (6,'turno456',24,2,100);
INSERT INTO SHIFT VALUES (7,'turno457',24,2,100);
INSERT INTO SHIFT VALUES (8,'turno458',24,2,100);
INSERT INTO SHIFT VALUES (9,'turno3',25,2,100);
INSERT INTO SHIFT VALUES (10,'turno4',24,1,100);
INSERT INTO SHIFT VALUES (11,'turno5',24,2,100);
INSERT INTO SHIFT VALUES (12,'turno_ep_teorico1',29,1,100);
INSERT INTO SHIFT VALUES (13,'turno_ep_laboratorio1',29,4,50);
INSERT INTO SHIFT VALUES (14,'turno_ep_laboratorio2',29,4,50);
INSERT INTO SHIFT VALUES (15,'turno_ep_pratica1',29,2,50);
INSERT INTO SHIFT VALUES (16,'turno_ep_pratica2',29,2,50);
INSERT INTO SHIFT VALUES (17,'turno_apr_teorico1',33,1,25);
INSERT INTO SHIFT VALUES (18,'turno_apr_pratica1',33,2,25);
INSERT INTO SHIFT VALUES (19,'turno_ip_teorico',26,1,100);
INSERT INTO SHIFT VALUES (20,'turno_ip_pratica',26,2,30);
INSERT INTO SHIFT VALUES (21,'turno_ip_laboratorial',26,4,15);
INSERT INTO SHIFT VALUES (22,'turno_po_teorico',27,1,100);
INSERT INTO SHIFT VALUES (23,'turno_po_pratica',27,2,30);
INSERT INTO SHIFT VALUES (24,'turno_po_laboratorial',27,4,15);
INSERT INTO SHIFT VALUES (25,'turno_rc1_teorico',28,1,100);
INSERT INTO SHIFT VALUES (26,'turno_rc1_pratica',28,2,30);
INSERT INTO SHIFT VALUES (27,'turno_rc1_laboratorial',28,4,15);
INSERT INTO SHIFT VALUES (28,'turno_ac_teorico',30,1,100);
INSERT INTO SHIFT VALUES (29,'turno_ac_pratica',30,2,30);
INSERT INTO SHIFT VALUES (30,'turno_ac_laboratorial',30,4,15);
INSERT INTO SHIFT VALUES (31,'turno_comp_teorico',31,1,100);
INSERT INTO SHIFT VALUES (32,'turno_comp_pratica',31,2,30);
INSERT INTO SHIFT VALUES (33,'turno_comp_laboratorial',31,4,15);
INSERT INTO SHIFT VALUES (34, 'turno_adicionar_aula', 25,1,100);

#-----------------------------
# Data for table 'CLASS_SHIFT'
#-----------------------------
DELETE FROM CLASS_SHIFT;
INSERT INTO CLASS_SHIFT VALUES (1, 12, 1);
INSERT INTO CLASS_SHIFT VALUES (2, 13, 2);
INSERT INTO CLASS_SHIFT VALUES (3, 14, 3);
INSERT INTO CLASS_SHIFT VALUES (4, 15, 4);
INSERT INTO CLASS_SHIFT VALUES (5, 14, 5);
INSERT INTO CLASS_SHIFT VALUES (6, 14, 6);
INSERT INTO CLASS_SHIFT VALUES (7, 14, 7);
INSERT INTO CLASS_SHIFT VALUES (8, 15, 5);
INSERT INTO CLASS_SHIFT VALUES (9, 15, 8);
INSERT INTO CLASS_SHIFT VALUES (10, 16, 9);
INSERT INTO CLASS_SHIFT VALUES (11, 16, 10);
INSERT INTO CLASS_SHIFT VALUES (12, 16, 11);
INSERT INTO CLASS_SHIFT VALUES (13, 16, 12);
INSERT INTO CLASS_SHIFT VALUES (14, 16, 13);
INSERT INTO CLASS_SHIFT VALUES (15, 16, 14);
INSERT INTO CLASS_SHIFT VALUES (16, 16, 15);
INSERT INTO CLASS_SHIFT VALUES (17, 16, 16);
INSERT INTO CLASS_SHIFT VALUES (18, 17, 17);
INSERT INTO CLASS_SHIFT VALUES (19, 17, 18);
INSERT INTO CLASS_SHIFT VALUES (20, 16, 19);
INSERT INTO CLASS_SHIFT VALUES (21, 16, 20);
INSERT INTO CLASS_SHIFT VALUES (22, 16, 21);
INSERT INTO CLASS_SHIFT VALUES (23, 16, 22);
INSERT INTO CLASS_SHIFT VALUES (24, 16, 23);
INSERT INTO CLASS_SHIFT VALUES (25, 16, 24);
INSERT INTO CLASS_SHIFT VALUES (26, 16, 25);
INSERT INTO CLASS_SHIFT VALUES (27, 16, 26);
INSERT INTO CLASS_SHIFT VALUES (28, 16, 27);
INSERT INTO CLASS_SHIFT VALUES (29, 17, 28);
INSERT INTO CLASS_SHIFT VALUES (30, 17, 29);
INSERT INTO CLASS_SHIFT VALUES (31, 17, 30);
INSERT INTO CLASS_SHIFT VALUES (32, 16, 31);
INSERT INTO CLASS_SHIFT VALUES (33, 16, 32);
INSERT INTO CLASS_SHIFT VALUES (34, 16, 33);


#-----------------------------
# Data for table 'SHIFT_LESSON'
#-----------------------------
DELETE FROM SHIFT_LESSON;
INSERT INTO SHIFT_LESSON VALUES (2, 10, 1);
INSERT INTO SHIFT_LESSON VALUES (3, 5, 3);
INSERT INTO SHIFT_LESSON VALUES (4, 5, 4);
INSERT INTO SHIFT_LESSON VALUES (5, 6, 3);
INSERT INTO SHIFT_LESSON VALUES (6, 4, 4);
INSERT INTO SHIFT_LESSON VALUES (7, 4, 5);
INSERT INTO SHIFT_LESSON VALUES (8, 12, 6);
INSERT INTO SHIFT_LESSON VALUES (9, 13, 7);
INSERT INTO SHIFT_LESSON VALUES (10, 14, 8);
INSERT INTO SHIFT_LESSON VALUES (11, 15, 9);
INSERT INTO SHIFT_LESSON VALUES (12, 16, 10);
INSERT INTO SHIFT_LESSON VALUES (13, 17, 11);
INSERT INTO SHIFT_LESSON VALUES (14, 18, 12);
INSERT INTO SHIFT_LESSON VALUES (15, 1, 13);
INSERT INTO SHIFT_LESSON VALUES (16, 20, 14);
INSERT INTO SHIFT_LESSON VALUES (17, 21, 15);
INSERT INTO SHIFT_LESSON VALUES (18, 22, 16);
INSERT INTO SHIFT_LESSON VALUES (19, 23, 17);
INSERT INTO SHIFT_LESSON VALUES (20, 24, 18);
INSERT INTO SHIFT_LESSON VALUES (21, 25, 19);
INSERT INTO SHIFT_LESSON VALUES (22, 26, 20);
INSERT INTO SHIFT_LESSON VALUES (23, 27, 21);
INSERT INTO SHIFT_LESSON VALUES (24, 28, 22);
INSERT INTO SHIFT_LESSON VALUES (25, 29, 23);
INSERT INTO SHIFT_LESSON VALUES (26, 30, 24);
INSERT INTO SHIFT_LESSON VALUES (27, 31, 25);
INSERT INTO SHIFT_LESSON VALUES (28, 32, 26);
INSERT INTO SHIFT_LESSON VALUES (29, 33, 27);


#-----------------------------
# Data for table 'EXECUTION_COURSE'
#-----------------------------
DELETE FROM EXECUTION_COURSE;
INSERT INTO EXECUTION_COURSE VALUES (24,'Trabalho Final de Curso I','TFCI',11,0,'programa1',1.5,2,1.5,2, 1, 1);
INSERT INTO EXECUTION_COURSE VALUES (25,'Trabalho Final de Curso II','TFCII',11,0,'programa10',1.5,1.5,1.5,1.5, 2, 1);
INSERT INTO EXECUTION_COURSE VALUES (26,'Introducao a Programacao','IP',11,0,'programa10',0,0,0,0, 1, 1);
INSERT INTO EXECUTION_COURSE VALUES (27,'Programacao com Objectos','PO',11,0,'blob',0,0,0,0, 1, 1);
INSERT INTO EXECUTION_COURSE VALUES (28,'Redes de Computadores I','RCI',11,0,'blob',0,0,0,0, 2, 1);
INSERT INTO EXECUTION_COURSE VALUES (29,'Engenharia da Programacao','EP',11,0,'blob',0,0,0,0, 2, 1);
INSERT INTO EXECUTION_COURSE VALUES (30,'Arquitecturas de Computadores','AC',11,0,'blob',1,0,0,0, 2, 1);
INSERT INTO EXECUTION_COURSE VALUES (31,'Compiladores','COMP',11,0,'blob',0,0,0,0, 1, 1);
INSERT INTO EXECUTION_COURSE VALUES (32,'Redes de Computadores II','RCII',11,0,'blob',0,0,0,0, 2, 1);
INSERT INTO EXECUTION_COURSE VALUES (33,'Aprendizagem','APR',11,0,'blob',0,0,0,0, 2, 1);


#-----------------------------
# Data for table 'CURRICULAR_COURSE_EXECUTION_COURSE'
#-----------------------------
DELETE FROM CURRICULAR_COURSE_EXECUTION_COURSE;
INSERT INTO CURRICULAR_COURSE_EXECUTION_COURSE VALUES (34,14,24);
INSERT INTO CURRICULAR_COURSE_EXECUTION_COURSE VALUES (35,15,25);
INSERT INTO CURRICULAR_COURSE_EXECUTION_COURSE VALUES (37,17,27);
INSERT INTO CURRICULAR_COURSE_EXECUTION_COURSE VALUES (38,18,28);
INSERT INTO CURRICULAR_COURSE_EXECUTION_COURSE VALUES (39,19,29);
INSERT INTO CURRICULAR_COURSE_EXECUTION_COURSE VALUES (40,20,30);
INSERT INTO CURRICULAR_COURSE_EXECUTION_COURSE VALUES (41,21,31);
INSERT INTO CURRICULAR_COURSE_EXECUTION_COURSE VALUES (42,22,32);
INSERT INTO CURRICULAR_COURSE_EXECUTION_COURSE VALUES (43,23,33);


#-----------------------------
# Data for table 'ROOM'
#-----------------------------
DELETE FROM ROOM;
INSERT INTO ROOM VALUES (44,'Ga1','Pavilhao Central',0,1,100,50);
INSERT INTO ROOM VALUES (45,'Ga2','Pavilhao Central',0,1,100,50);
INSERT INTO ROOM VALUES (46,'Ga3','Pavilhao Central',0,1,100,50);


#-----------------------------
# Data for table 'LESSON'
#-----------------------------
DELETE FROM LESSON;
INSERT INTO LESSON VALUES (1,2,080000,093000,44,24,1);
INSERT INTO LESSON VALUES (2,2,080000,093000,45,24,1);
INSERT INTO LESSON VALUES (3,4,080000,093000,45,24,1);
INSERT INTO LESSON VALUES (4,5,080000,093000,45,24,1);
INSERT INTO LESSON VALUES (5,7,080000,093000,45,24,1);
INSERT INTO LESSON VALUES (6,2,113000,123000,44,29,1);
INSERT INTO LESSON VALUES (7,3,080000,093000,44,25,2);
INSERT INTO LESSON VALUES (8,4,080000,093000,44,25,2);
INSERT INTO LESSON VALUES (9,5,080000,093000,44,29,2);
INSERT INTO LESSON VALUES (10,6,080000,093000,44,29,2);
INSERT INTO LESSON VALUES (11,2,100000,113000,45,33,1);
INSERT INTO LESSON VALUES (12,6,100000,113000,45,33,2);
INSERT INTO LESSON VALUES (13,2,123000,130000,44,24,1);
INSERT INTO LESSON VALUES (14,2,130000,133000,44,26,2);
INSERT INTO LESSON VALUES (15,2,133000,140000,44,26,4);
INSERT INTO LESSON VALUES (16,3,123000,130000,44,27,1);
INSERT INTO LESSON VALUES (17,3,130000,133000,44,27,2);
INSERT INTO LESSON VALUES (18,3,133000,140000,44,25,2);
INSERT INTO LESSON VALUES (19,4,123000,130000,44,28,1);
INSERT INTO LESSON VALUES (20,4,130000,133000,44,28,2);
INSERT INTO LESSON VALUES (21,4,133000,140000,44,28,4);
INSERT INTO LESSON VALUES (22,5,123000,130000,44,30,1);
INSERT INTO LESSON VALUES (23,5,130000,133000,44,30,1);
INSERT INTO LESSON VALUES (24,5,133000,140000,44,30,4);
INSERT INTO LESSON VALUES (25,6,123000,130000,44,31,1);
INSERT INTO LESSON VALUES (26,6,130000,133000,44,31,2);
INSERT INTO LESSON VALUES (27,6,133000,140000,44,31,4);
INSERT INTO LESSON VALUES (28,3,080000,093000,45,25,1);

#-----------------------------
# Data for table 'STUDENT'
#-----------------------------
DELETE FROM STUDENT;
INSERT INTO STUDENT VALUES (1, 600, 1, 567, 1);
INSERT INTO STUDENT VALUES (2, 700, 2, 100, 1);
INSERT INTO STUDENT VALUES (3, 800, 3, 567, 1);
INSERT INTO STUDENT VALUES (4, 900, 4, 567, 1);
INSERT INTO STUDENT VALUES (5, 45498, 5, 567, 1);


#-----------------------------
# Data for table 'ATTEND'
#-----------------------------
DELETE FROM ATTEND;
INSERT INTO ATTEND VALUES (1, 3, 24);
INSERT INTO ATTEND VALUES (2, 5, 25);
INSERT INTO ATTEND VALUES (3, 5, 29);
INSERT INTO ATTEND VALUES (4, 5, 33);


#-----------------------------
# Data for table 'SHIFT_STUDENT'
#-----------------------------
DELETE FROM SHIFT_STUDENT;
INSERT INTO SHIFT_STUDENT VALUES (1, 9, 3);
INSERT INTO SHIFT_STUDENT VALUES (2, 10, 4);
INSERT INTO SHIFT_STUDENT VALUES (3, 17, 5);
INSERT INTO SHIFT_STUDENT VALUES (4, 18, 5);

#-----------------------------
# Data for table 'EXECUTION_PERIOD'
#-----------------------------
DELETE FROM EXECUTION_PERIOD;
INSERT INTO EXECUTION_PERIOD values (1, '2� Semestre', 1);
INSERT INTO EXECUTION_PERIOD values (2, '3� Semestre', 1);


#-----------------------------
# Data for table 'EXECUTION_YEAR'
#-----------------------------
DELETE FROM EXECUTION_YEAR;
INSERT INTO EXECUTION_YEAR values (1, '2002/2003');
INSERT INTO EXECUTION_YEAR values (2, '2003/2004');


#-----------------------------
# Data for table 'MASTER_DEGREE_CANDIDATE'
#-----------------------------
DELETE FROM MASTER_DEGREE_CANDIDATE;
INSERT INTO MASTER_DEGREE_CANDIDATE VALUES (1, 6, 10, 1, 1, 'Informatica', 'IST', 2000, 14.99);
INSERT INTO MASTER_DEGREE_CANDIDATE VALUES (2, 7, 10, 2, 2, 'Informatica 2', 'IST 2', 2001, 13.99);


#-----------------------------
# Data for table 'CANDIDATE_SITUATION'
#-----------------------------
DELETE FROM CANDIDATE_SITUATION;
INSERT INTO CANDIDATE_SITUATION VALUES (1, '2002-11-17', 'Nothing', 0, 1, 1);
INSERT INTO CANDIDATE_SITUATION VALUES (2, '2002-11-17', 'Nothing', 1, 2, 1);
INSERT INTO CANDIDATE_SITUATION VALUES (3, '2002-11-20', 'Nothing', 1, 1, 2);

#-----------------------------
# Data for table 'EXAM'
#-----------------------------
DELETE FROM EXAM;
INSERT INTO EXAM values (1, 29, '2003-03-19', 090000, 120000);
INSERT INTO EXAM values (2, 30, '2003-03-20', 090000, 120000);
INSERT INTO EXAM values (3, 31, '2003-03-19', 130000, 150000);
INSERT INTO EXAM values (4, 29, '2003-03-19', 130000, 150000);
INSERT INTO EXAM values (5, 28, '2003-03-19', 130000, 150000);

#------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------
# O codigo entre estas duas linhas e' para o David e o Ricardo.
# Coloquem o vosso codigo depois.
# Obrigado!
#

#-----------------------------
# Data for table 'BRANCH'
#-----------------------------
DELETE FROM BRANCH;
INSERT INTO BRANCH values (1, 'IA', 'Inteligencia Artificial');
INSERT INTO BRANCH values (2, 'II', 'Informatica Industrial');

#-----------------------------
# Data for table 'CURRICULAR_COURSE_BRANCH'
#-----------------------------
DELETE FROM CURRICULAR_COURSE_BRANCH;
INSERT INTO CURRICULAR_COURSE_BRANCH values (1, 1, 14);
INSERT INTO CURRICULAR_COURSE_BRANCH values (2, 2, 14);

#-----------------------------
# Data for table 'STUDENT_CURRICULAR_PLAN_BRANCH'
#-----------------------------
DELETE FROM STUDENT_CURRICULAR_PLAN_BRANCH;
INSERT INTO STUDENT_CURRICULAR_PLAN_BRANCH values (1, 1, 1);
INSERT INTO STUDENT_CURRICULAR_PLAN_BRANCH values (2, 2, 1);

#-----------------------------
# Data for table 'CURRICULAR_YEAR'
#-----------------------------
DELETE FROM CURRICULAR_YEAR;
INSERT INTO CURRICULAR_YEAR values (1, 2003);
INSERT INTO CURRICULAR_YEAR values (2, 2004);

#-----------------------------
# Data for table 'CURRICULAR_SEMESTER'
#-----------------------------
DELETE FROM CURRICULAR_SEMESTER;
INSERT INTO CURRICULAR_SEMESTER values (1, 1, 1);
INSERT INTO CURRICULAR_SEMESTER values (2, 1, 2);

#-----------------------------
# Data for table 'CURRICULAR_COURSE_CURRICULAR_SEMESTER'
#-----------------------------
DELETE FROM CURRICULAR_COURSE_CURRICULAR_SEMESTER;
INSERT INTO CURRICULAR_COURSE_CURRICULAR_SEMESTER values (1, 1, 1);
INSERT INTO CURRICULAR_COURSE_CURRICULAR_SEMESTER values (2, 1, 2);


#-----------------------------
# Data for table 'EQUIVALENCE'
#-----------------------------
DELETE FROM EQUIVALENCE;
INSERT INTO EQUIVALENCE VALUES (1, 2, 1, 1);

#------------------------------------------------------------------------------------------------------------------

#-----------------------------
# Data for table 'ENROLMENT'
#-----------------------------
DELETE FROM ENROLMENT;
INSERT INTO ENROLMENT VALUES (1, 3, 14);
INSERT INTO ENROLMENT VALUES (2, 1, 14);

#-----------------------------
# Data for table 'STUDENT_CURRICULAR_PLAN'
#-----------------------------
DELETE FROM STUDENT_CURRICULAR_PLAN;
INSERT INTO STUDENT_CURRICULAR_PLAN VALUES (1, 1, 1, 1, '2002-12-21');
INSERT INTO STUDENT_CURRICULAR_PLAN VALUES (2, 1, 1, 2, '2002-10-21');
INSERT INTO STUDENT_CURRICULAR_PLAN VALUES (3, 5, 1, 1, '2002-10-21');

#-----------------------------
# Data for table 'DEPARTMENT'
#-----------------------------
DELETE FROM DEPARTMENT;
INSERT INTO DEPARTMENT VALUES (1, 'dep1', 'd1');
INSERT INTO DEPARTMENT VALUES (2, 'dep10', 'd10');

#-----------------------------
# Data for table 'DEPARTMENT_COURSE'
#-----------------------------
DELETE FROM DEPARTMENT_COURSE;
INSERT INTO DEPARTMENT_COURSE VALUES (1, 'Engenharia da Programacao', 'ep', 1);
INSERT INTO DEPARTMENT_COURSE VALUES (2, 'Nao sei', 'mvt', 1);

#-----------------------------
# Data for table 'DEGREE_CURRICULAR_PLAN'
#-----------------------------
DELETE FROM DEGREE_CURRICULAR_PLAN;
INSERT INTO DEGREE_CURRICULAR_PLAN VALUES (1, 'plano1', 8, 1, '0000-00-00', '0000-00-00');
INSERT INTO DEGREE_CURRICULAR_PLAN VALUES (2, 'plano2', 9, 1, '0000-00-00', '0000-00-00');

#-----------------------------
# Data for table 'DEGREE'
#-----------------------------
DELETE FROM DEGREE;
INSERT INTO DEGREE VALUES (8,'LEIC','Licenciatura de Engenharia Informatica e de Computadores',1);
INSERT INTO DEGREE VALUES (9,'LEEC','Licenciatura de Engenharia Electrotecnica e de Computadores',2);
INSERT INTO DEGREE VALUES (10,'MIC','Mestrado em Informatica e Computadores',2);

#-----------------------------
# Data for table 'CURRICULAR_COURSE'
#-----------------------------
DELETE FROM CURRICULAR_COURSE;
INSERT INTO CURRICULAR_COURSE VALUES (14,1,1,0,0,0,0,0,2,1,'Trabalho Final de Curso I','TFCI');
INSERT INTO CURRICULAR_COURSE VALUES (15,1,2,0,0,0,0,0,5,2,'Trabalho Final de Curso II','TFCII');
INSERT INTO CURRICULAR_COURSE VALUES (16,2,1,0,0,0,0,0,1,1,'Introducao a Programacao','IP');
INSERT INTO CURRICULAR_COURSE VALUES (17,2,2,0,0,0,0,0,2,1,'Programacao com Objectos','PO');
INSERT INTO CURRICULAR_COURSE VALUES (18,1,1,0,0,0,0,0,3,1,'Redes de Computadores I','RCI');
INSERT INTO CURRICULAR_COURSE VALUES (19,1,2,0,0,0,0,0,4,1,'Engenharia da Programacao','EP');
INSERT INTO CURRICULAR_COURSE VALUES (20,2,1,1,0,0,0,0,1,2,'Arquitecturas de Computadores','AC');
INSERT INTO CURRICULAR_COURSE VALUES (21,2,2,0,0,0,0,0,2,2,'Compiladores','COMP');
INSERT INTO CURRICULAR_COURSE VALUES (22,1,2,0,0,0,0,0,3,2,'Redes de Computadores II','RCII');
INSERT INTO CURRICULAR_COURSE VALUES (23,2,1,0,0,0,0,0,4,2,'Aprendizagem','APR');

#
#------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------

