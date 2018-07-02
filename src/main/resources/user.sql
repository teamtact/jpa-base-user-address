DROP TABLE IF EXISTS S_USER;
CREATE TABLE S_USER 
(
	USERID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	USERNAME VARCHAR(255) NULL,
	PASSWORD VARCHAR(32) NULL,
	EMAIL VARCHAR(200)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE S_USER ADD COLUMN CREATED_DATE DATETIME;
ALTER TABLE S_USER ADD COLUMN STATUS INT;

UPDATE S_USER SET CREATED_DATE = NOW();
UPDATE S_USER SET STATUS = 1;

INSERT INTO TEST.s_user VALUES (null, 'raja', 'test', 'raja@gmail.com', NOW(), 1);
INSERT INTO TEST.s_user VALUES (null, 'kumar', 'test', 'kumar@gmail.com', NOW(), 1);
INSERT INTO TEST.s_user VALUES (null, 'koiz', 'test', 'koiz@gmail.com', NOW(), 1);

DROP TABLE IF EXISTS S_NAMES;
CREATE TABLE S_NAMES
(
	NAMES_USERID INT NOT NULL,
	FIRSTNAME VARCHAR(50) NULL,
	LASTNAME VARCHAR(50) NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO S_NAMES VALUES (1, 'Raja', 'Raman');
INSERT INTO S_NAMES VALUES (2, 'Kumar', 'Rajan');
INSERT INTO S_NAMES VALUES (3, 'Rajesh', 'Kumar');

DROP TABLE IF EXISTS S_ADDRESSES;
CREATE TABLE S_ADDRESSES
(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ADDRESS_USERID INT NOT NULL,
	STREETNAME VARCHAR(100),
	CITY VARCHAR(100),
	COUNTRY VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO S_ADDRESSES VALUES (NULL, 1, 'Spadina', 'Toronto', 'Canada');
INSERT INTO S_ADDRESSES VALUES (NULL, 1, 'Dupont', 'Montreal', 'Canada');
INSERT INTO S_ADDRESSES VALUES (NULL, 1, 'Anna Nagar', 'Chennai', 'India');
INSERT INTO S_ADDRESSES VALUES (NULL, 2, 'KK Nagar', 'Chennai', 'India');
INSERT INTO S_ADDRESSES VALUES (NULL, 2, 'JP Nagar', 'Bangalore', 'India');
INSERT INTO S_ADDRESSES VALUES (NULL, 3, 'J Nagar', 'Bangalore', 'India');
INSERT INTO S_ADDRESSES VALUES (NULL, 3, 'J Nagar', 'Delhi', 'India');