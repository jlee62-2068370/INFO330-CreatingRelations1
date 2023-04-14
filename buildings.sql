DROP TABLE IF EXISTS buildings;

CREATE TABLE buildings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE
);

DROP TABLE IF EXISTS rooms;

CREATE TABLE rooms (
  number INT NOT NULL,
  buildingid INT,
  seating INT,
  FOREIGN KEY (buildingid) REFERENCES buildings (id)
);
---------------------------------------------------------------------------------------------
INSERT INTO buildings (name, shortname)
VALUES ('Mary Gates Hall', 'MGH'),
  ('Kane Hall', 'KNE'),
  ('Bagley Hall', 'BAG'),
  ('Savery Hall', 'SAV');

INSERT INTO rooms (number, buildingid, seating)
VALUES (120, 2, 90),
  (130, 2, 10),
  (242, 1, 4),
  (120, 3, 15),
  (133, 4, 7);