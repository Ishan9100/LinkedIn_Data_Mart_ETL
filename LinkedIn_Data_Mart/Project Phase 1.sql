/* Initialize DB. This must be done ONLY ONCE. It will delete the existing data otherwise */

DROP DATABASE IF EXISTS crm;

CREATE DATABASE crm CHARACTER SET utf8mb4;

USE crm;

DROP TABLE IF EXISTS src_linkedin;

CREATE TABLE src_linkedin (
  linkedin_public_id VARCHAR(100) NOT NULL,
  profile_filename_full VARCHAR(200),
  profile_filename_short VARCHAR(200),
  process_status VARCHAR(50) NOT NULL DEFAULT 'Requested',
  process_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(linkedin_public_id)
);


-- insert a sample linkedin profile id
 INSERT INTO src_linkedin (linkedin_public_id) VALUES ('mauricedawson');
 INSERT INTO src_linkedin (linkedin_public_id) VALUES ('interlee');
 INSERT INTO src_linkedin (linkedin_public_id) VALUES ('berniefloresca');


DROP TABLE IF EXISTS profile_section;

CREATE TABLE profile_section (
  section_id INTEGER UNSIGNED NOT NULL,
  section_name VARCHAR(40) NOT NULL,
  last_modified_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(section_id)
);

-- insert a new linkedin profile section
INSERT INTO profile_section (section_id, section_name) VALUES (1, 'profile-photo');


DROP TABLE IF EXISTS profile_section_log;

CREATE TABLE profile_section_log (
  linkedin_public_id VARCHAR(100) NOT NULL,
  section_id INTEGER UNSIGNED NOT NULL,
  process_status VARCHAR(50) NOT NULL DEFAULT 'Requested',
  process_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(linkedin_public_id, section_id),
  FOREIGN KEY (linkedin_public_id) REFERENCES src_linkedin(linkedin_public_id),
  FOREIGN KEY (section_id) REFERENCES profile_section(section_id)
);

DROP TABLE IF EXISTS profile_photo_url;
CREATE TABLE `profile_photo_url` (
  `linkedin_public_id` VARCHAR(100) DEFAULT NULL,
  `profile_pic_url` VARCHAR(400) DEFAULT NULL,
  FOREIGN KEY (linkedin_public_id) REFERENCES src_linkedin(linkedin_public_id)
);
