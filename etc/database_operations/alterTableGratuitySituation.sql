alter table GRATUITY_SITUATION add column HAS_PENALTY_EXEMPTION tinyint(1);
alter table GRATUITY_SITUATION add column KEY_PENALTY_EXEMPTION_EMPLOYEE int(11);
alter table GRATUITY_SITUATION add column PENALTY_EXEMPTION_DATE text;
alter table GRATUITY_SITUATION add column PENALTY_EXEMPTION_JUSTIFICATION text;
