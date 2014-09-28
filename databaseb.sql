CREATE DATABASE mediaplayer;

USE mediaplayer;

CREATE TABLE biisit(
    ID INT PRIMARY KEY,
    nimi VARCHAR(50),
    pituus VARCHAR(20));

CREATE TABLE kayttajat(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    tunnus VARCHAR(20),
    salasana VARCHAR(80));

CREATE TABLE soittolistat(
    biisiID INT,
    tunnusID INT,
    FOREIGN KEY (biisiID) REFERENCES biisit(ID),
    FOREIGN KEY (tunnusID) REFERENCES kayttajat(ID),
    PRIMARY KEY (biisiID, tunnusID));

INSERT INTO kayttajat (tunnus, salasana) VALUES("testi","7110eda4d09e062aa5e4a390b0a572ac0d2c0220"); // Käyttäjä

INSERT INTO biisit VALUES (1, "ROSE FLATS", "0:50");
INSERT INTO biisit VALUES (2, "Rimpula", "0:53");
INSERT INTO biisit VALUES (3, "Ränkylä", "0:51");
INSERT INTO biisit VALUES (4, "Renkylä", "0:522");
INSERT INTO biisit VALUES (5, "Fritsu", "0:55");
INSERT INTO biisit VALUES (6, "Raksu", "0:52");

INSERT INTO soittolistat VALUES(1, 1);
INSERT INTO soittolistat VALUES(2, 1);
INSERT INTO soittolistat VALUES(3, 1);

