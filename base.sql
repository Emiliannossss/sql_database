CREATE TABLE producers(
  producer_id INT PRIMARY KEY,
  name_producer TEXT NOT NULL,
  musician_name TEXT
);

CREATE TABLE pr (
  pr_id INT PRIMARY KEY,
  agency_name TEXT NOT NULL,
  executor TEXT NOT NULL,
  musician_id TEXT
);

CREATE TABLE medias (
  media_id INT PRIMARY KEY,
  agency_name TEXT NOT NULL,
  executor TEXT NOT NULL,
  musician_id TEXT
);

CREATE TABLE lawyers (
  lawyer_id INT PRIMARY KEY,
  agency_name TEXT NOT NULL,
  executor TEXT NOT NULL,
  musician_id TEXT
);

CREATE TABLE musicians (
  musician_id INT PRIMARY KEY,
  name_musician TEXT NOT NULL,
  producer_id INT,
  composition TEXT,
  pr_id INT,
  media_id INT,
  lawyer_id INT,
  FOREIGN KEY (producer_id) REFERENCES producers (producer_id),
  FOREIGN KEY (pr_id) REFERENCES pr (pr_id),
  FOREIGN KEY (media_id) REFERENCES medias (media_id),
  FOREIGN KEY (lawyer_id) REFERENCES lawyers (lawyer_id)
);

INSERT INTO producers
VALUES
(1, 'John Kel', 'Sam Nils'),
(2, 'Will Nics', 'Vias Kompose'),
(3, 'Nill Gikos', 'Patr'),
(4, 'Will Stone', 'Klie Brown'),
(5, 'John Snow', 'Spongs'),
(6, 'Sandra Klie', 'Face palwn'),
(7, 'Killian Rooney', 'Brus'),
(8, 'Wayne Keane', 'Major Button'),
(9, 'Jaime Klark', 'Kosk'),
(10, 'Nick Tayson', 'Ski');

INSERT INTO pr
VALUES
(1, 'BS', 'Nill Harison', 1),
(2, 'Pop&Ceb', 'Bob Green', 2),
(3, 'Ceo', 'Gill Klinton', 3),
(4, 'Maria and Selena', 'Grem Brown', 8),
(5, 'High Property', 'Boris Kane', 4),
(6, 'Quality', 'Kylie Crash', 7),
(7, 'JS', 'Victoria Hamsfort', 10),
(8, 'KLER', 'Bob Parker', 9);


INSERT INTO medias
VALUES
(1, 'P&C', 'Philipp Snow ', 1),
(2, 'VIP', 'Kile Parker', 2),
(3, 'Famous Persons', 'Bill Walker', 3),
(4, 'London Time', 'Gall Button', 7),
(5, 'Square', 'Lem Grey', 4),
(6, 'Talent', 'Phiona Forest', 6),
(7, 'Max', 'Till Potter', 10),
(8, 'Mens Time', 'Marek Hamsik', 8);

INSERT INTO lawyers
VALUES
(1, 'Trues', 'Bike', 1),
(2, 'l2', 'Viasd', 2),
(3, 'l3', 'Nik', 3),
(4, 'Honour', 'Bob Billson', 2),
(5, 'Courage', 'Barney Mousbe', 3),
(6, 'Respect', 'Ted Stinson', 2),
(7, 'Justice', 'Roben Sparkle', 1),
(8, 'The First', 'Lilie Erikson', 3),
(9, 'Famous', 'Marshall Erikson', 3),
(10, 'Popular Agency', 'Nick Fuery', 1);

INSERT INTO musicians
VALUES
(1, 'Sam Nils', 1, 'Song', 1, 1, 1),
(2, 'Klie Brown', 2, 'Picture', 2, 2, 2),
(3, 'Vias Kompose', 3, 'Tea', 3, 3, 3),
(4, 'Major Button', NULL, NULL, 1, 1, 2),
(5, 'Ski', 1, 'Lil ski', 2, 3, 3),
(6, 'Spongs', 1, 'Bob', 3, 1, 2),
(7, 'Patr', 3, 'Ick', 1, 3, 2),
(8, 'Kosk', 2, 'Wake up', 3, 1, 1),
(9, 'Face palwn', 3, 'Youppy', 1, 1, 1),
(10, 'Brus', 2, 'Up here', 3, 3, 3),
(11, 'Bily', 5, 'Next here', 4, 5, 1 ),
(12, 'Gas', 3, 'In the morning', 8, 4, 3 ),
(13, 'Bibos', 8, 'Still at night', 1, 8, 7 ),
(14, 'Creator', 10, 'Table', 8, 3, 9 ),
(15, 'Patrick Star', 3, 'Good night', 2, 6, 2 ),
(16, 'Mishawi', 1, 'My people', 6, 1, 10 ),
(17, 'Vias', 8, 'Moonlight', 8, 8, 10 ),
(18, 'Slyies', 10, 'Phone number', 5, 7, 1 ),
(19, 'Till', 3, 'London Vibe', 1, 5, 8 ),
(20, 'Gly', 10, 'City of dream', 1, 2, 3 )