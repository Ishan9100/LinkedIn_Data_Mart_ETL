CREATE TABLE demographic (
  public_identifier VARCHAR(500) DEFAULT NULL,
  profile_pic_url VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  background_COVER_image_url VARCHAR(500) DEFAULT NULL,
  first_name VARCHAR(500) DEFAULT NULL,
  last_name VARCHAR(500) DEFAULT NULL,
  full_name VARCHAR(500) DEFAULT NULL,
  follower_count VARCHAR(500) DEFAULT NULL,
  occupation VARCHAR(500) DEFAULT NULL,
  headline VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  summary TEXT DEFAULT NULL,
  country VARCHAR(500) DEFAULT NULL,
  country_full_name VARCHAR(500) DEFAULT NULL,
  city VARCHAR(500) DEFAULT NULL,
  state VARCHAR(500) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM demographic;

CREATE TABLE experience (
  public_identifier VARCHAR(500) DEFAULT NULL,
  starts_at_day INT DEFAULT NULL,
  starts_at_month INT DEFAULT NULL,
  starts_at_year INT DEFAULT NULL,
  ends_at_day INT DEFAULT NULL,
  ends_at_month INT DEFAULT NULL,
  ends_at_year INT DEFAULT NULL,
  company VARCHAR(500) DEFAULT NULL,
  company_linkedin_profile_url VARCHAR(500) DEFAULT NULL,
  title VARCHAR(500) DEFAULT NULL,
  DESCRIPTION VARCHAR(500) DEFAULT NULL,
  location VARCHAR(500) DEFAULT NULL,
  logo_url VARCHAR(500) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM experience;

DROP TABLE education;

CREATE TABLE education (
  public_identifier VARCHAR(500) DEFAULT NULL,
  starts_at_day INT DEFAULT NULL,
  starts_at_month INT DEFAULT NULL,
  starts_at_year INT DEFAULT NULL,
  ends_at_day INT DEFAULT NULL,
  ends_at_month INT DEFAULT NULL,
  ends_at_year INT DEFAULT NULL,
  field_of_study VARCHAR(500) DEFAULT NULL,
  degree_name VARCHAR(500) DEFAULT NULL,
  school VARCHAR(500) DEFAULT NULL,
  school_linkedin_profile_url VARCHAR(500) DEFAULT NULL,
  DESCRIPTION VARCHAR(500) DEFAULT NULL,
  logo_url VARCHAR(500) DEFAULT NULL,
  grade VARCHAR(100) DEFAULT NULL,
  activities_and_societies VARCHAR(500) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM education;


CREATE TABLE certifications (
  public_identifier VARCHAR(500) DEFAULT NULL,
  starts_at_day INT DEFAULT NULL,
  starts_at_month INT DEFAULT NULL,
  starts_at_year INT DEFAULT NULL,
  ends_at_day INT DEFAULT NULL,
  ends_at_month INT DEFAULT NULL,
  ends_at_year INT DEFAULT NULL,
  NAME VARCHAR(500) DEFAULT NULL,
  license_number VARCHAR(500) DEFAULT NULL,
  display_source VARCHAR(500) DEFAULT NULL,
  authority VARCHAR(500) DEFAULT NULL,
  url VARCHAR(500) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SELECT * FROM certifications;


CREATE TABLE languages (
  public_identifier VARCHAR(500) DEFAULT NULL,
  languages VARCHAR(100) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM languages;



CREATE TABLE accomplishment_honors_awards (
  public_identifier VARCHAR(500) DEFAULT NULL,
  title VARCHAR(500) DEFAULT NULL,
  ISSUER VARCHAR(500) DEFAULT NULL,
  issued_on_day INT DEFAULT NULL,
  issued_on_month INT DEFAULT NULL,
  issued_on_year INT DEFAULT NULL,
  DESCRIPTION VARCHAR(500) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM accomplishment_honors_awards;


CREATE TABLE accomplishment_publications (
  public_identifier VARCHAR(500) DEFAULT NULL,
  NAME VARCHAR(500) DEFAULT NULL,
  publisher VARCHAR(500) DEFAULT NULL,
  published_on_day INT DEFAULT NULL,
  published_on_month INT DEFAULT NULL,
  published_on_year INT DEFAULT NULL,
  DESCRIPTION VARCHAR(500) DEFAULT NULL,
  url VARCHAR(500) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM accomplishment_publications;


CREATE TABLE accomplishment_patents (
  public_identifier VARCHAR(500) DEFAULT NULL,
  title VARCHAR(500) DEFAULT NULL,
  ISSUER VARCHAR(100) DEFAULT NULL,
  issued_on_day INT DEFAULT NULL,
  issued_on_month INT DEFAULT NULL,
  issued_on_year INT DEFAULT NULL,
  DESCRIPTION VARCHAR(500) DEFAULT NULL,
  application_number VARCHAR(100) DEFAULT NULL,
  patent_number VARCHAR(100) DEFAULT NULL,
  url VARCHAR(500) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM accomplishment_patents;


CREATE TABLE accomplishment_projects (
  public_identifier VARCHAR(500) DEFAULT NULL,
  starts_at_day INT DEFAULT NULL,
  starts_at_month INT DEFAULT NULL,
  starts_at_year INT DEFAULT NULL,
  ends_at_day INT DEFAULT NULL,
  ends_at_month INT DEFAULT NULL,
  ends_at_year INT DEFAULT NULL,
  title VARCHAR(500) DEFAULT NULL,
  DESCRIPTION VARCHAR(500) DEFAULT NULL,
  url VARCHAR(500) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SELECT * FROM accomplishment_projects;


CREATE TABLE volunteer_work (
  public_identifier VARCHAR(500) DEFAULT NULL,
  starts_at_day INT DEFAULT NULL,
  starts_at_month INT DEFAULT NULL,
  starts_at_year INT DEFAULT NULL,
  ends_at_day INT DEFAULT NULL,
  ends_at_month INT DEFAULT NULL,
  ends_at_year INT DEFAULT NULL,
  title VARCHAR(500) DEFAULT NULL,
  cause VARCHAR(500) DEFAULT NULL,
  company VARCHAR(500) DEFAULT NULL,
  company_linkedin_profile_url VARCHAR(500) DEFAULT NULL,
  DESCRIPTION VARCHAR(500) DEFAULT NULL,
  logo_url VARCHAR(500) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM volunteer_work;
