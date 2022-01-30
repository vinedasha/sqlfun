CREATE TABLE families(id_people int primary key NOT NULL, nme varchar(15), surname varchar(15), otch varchar(15), god_rogd int, pol varchar(15), eg_dohod int);

CREATE TABLE family_obqed(id_people int NOT NULL, id_family int);

CREATE TABLE deti_roditeli(id_rodit int NOT NULL, id_children int, id_bliznec int);

CREATE TABLE rabota(id_people int primary key NOT NULL, firma varchar(15), adrec varchar(15), dolgnost varchar(15));

CREATE TABLE name_fam(id_family int primary key NOT NULL, name_family varchar(15));

CREATE TABLE brack(id serial, mug int  NOT NULL, gena int NOT NULL);


ALTER TABLE family_obqed add constraint fk_obqed foreign key (id_people) references families(id_people);
ALTER TABLE deti_roditeli add constraint fk_deti1 foreign key (id_rodit) references families(id_people);
ALTER TABLE deti_roditeli add constraint fk_deti2 foreign key (id_children) references families(id_people);
ALTER TABLE deti_roditeli add constraint fk_deti3 foreign key (id_bliznec) references families(id_people);
ALTER TABLE rabota add constraint fk_rabota foreign key (id_people) references families(id_people);
ALTER TABLE family_obqed add constraint fk_fam foreign key (id_family) references name_fam (id_family);
ALTER TABLE brack add constraint fk_brack1 foreign key (mug) references families(id_people);
ALTER TABLE brack add constraint fk_brack2 foreign key (gena) references families(id_people);

INSERT INTO families (id_people, nme, surname, otch, god_rogd, pol, eg_dohod) VALUES
(101, 'Sergey', 'Bananov', 'Alexcandrovich', 1972, 'man', 23500), --1
(102, 'Masha', 'Bananova', 'Anreevna', 1975, 'woman', 25000),
(103, 'Sasha', 'Bananova', 'Sergeevna', 2003, 'woman', 3000),
(104, 'Pasha', 'Bananov', 'Sergeev', 2003, 'man', 0),
(105, 'Masha', 'Loseva', 'Demidiov', 1973 , 'woman',  20000), --2
(106, 'Pasha', 'Losev', 'Makarov', 1975 , 'man', 0 ),
(107, 'Dasha', 'Loseva', 'Pavlovna', 2002 , 'woman', 15000 ),
(108, 'Maksim', 'Isaev', 'Andreevich', 1976 , 'man', 65000 ), --3
(109, 'Rina', 'Isaeva', 'Maksimovna', 1978 , 'woman', 55000 ),
(110, 'Alena', 'Isaeva', 'Maksimovna', 2004 , 'woman', 25000 ),
(111, 'Artur', 'Lukin', 'Dmitriev', 1965 , 'man', 20000 ), --4
(112, 'Galya', 'Lukina', 'Pavlovna', 1968 , 'woman', 25000),
(113, 'Mehail', 'Lukin', 'Arturovich', 2002 , 'man', 5000 ),
(114, 'Andrey', 'Lukin', 'Arturovach', 2002 , 'man', 0 ),
(115, 'Andrey', 'Popov', 'Ivanovich', 1989 , 'man',  0), --5
(116, 'Yana', 'Popova', 'Andreevna', 1973 , 'woman',  50000),
(117, 'Anna', 'Popova', 'Andreevna', 2003 , 'woman', 10000),
(118, 'Stepan', 'Popov', 'Andreevich', 2003 , 'man', 0),
(119, 'Polina', 'Larina', 'Egorovich', 1973 , 'woman', 0), --6
(120, 'Roman', 'Larin', 'Leonidovich', 1973 , 'man', 60000),
(121, 'Alisa', 'Larina', 'Romanovna', 2003 , 'woman',  0), 
(122, 'Georgiy', 'Somov', 'Rodionovna', 1989, 'man', 15000), --7
(123, 'Milana', 'Somovna', 'Antonovna', 1989, 'woman', 100000),
(124, 'Mark', 'Somovna', 'Giorgivich', 2002, 'man', 1500),
(125, 'Marinett', 'Bogomolovna', 'Kimovna', 1973, 'woman', 15000), --8
(126, 'Luka', 'Bogomolov', 'Chiminov', 1973, 'man', 70000),
(127, 'Alya', 'Bogomolovna', 'Lukovna', 2004, 'woman', 0),
(128, 'Melissa', 'Bogomolovna', 'Lukovich', 2004, 'woman', 0),
(129, 'Raisa', 'Arbuzova', 'Jinovna', 1979, 'woman', 25000), --9
(130, 'Sergey', 'Matrosov', 'Andreevich', 1980, 'man', 25400),
(131, 'Kirill', 'Matrosovna', 'Sergeevna', 2003, 'woman', 1000), 
(132, 'Petya', 'Ribkov', 'Maximov', 1971, 'man', 18000), --10
(133, 'Lena', 'Ribkova', 'Kirillovna', 1973, 'woman', 24000),
(134, 'Roman', 'Ribkova', 'Petrov', 2005, 'man', 0);

INSERT INTO brack(mug, gena) VALUES
(101, 102),
(106, 105),
(108, 109),
(111, 112),
(115, 116),
(120, 119),
(122, 123),
(126, 125),
(130, 129),
(132, 133);

INSERT INTO name_fam(id_family, name_family) VALUES
(1, 'peet'),
(2, 'reet'),
(3, 'teet'),
(4, 'keet'),
(5, 'feet'),
(6, 'weet'),
(7, 'neet'),
(8, 'meet'),
(9, 'ieet'),
(10, 'veet');

INSERT INTO family_obqed (id_people, id_family) VALUES
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 2),
(106, 2),
(107, 2),
(108, 3),
(109, 3),
(110, 3),
(111, 4),
(112, 4),
(113, 4),
(114, 4),
(115, 5),
(116, 5),
(117, 5),
(118, 5),
(119, 6),
(120, 6),
(121, 6),
(122, 7),
(123, 7),
(124, 7),
(125, 8),
(126, 8),
(127, 8),
(128, 8),
(129, 9),
(130, 9),
(131, 9),
(132, 10),
(133, 10),
(134, 10);

INSERT INTO deti_roditeli (id_rodit, id_children, id_bliznec) VALUES
(101, 103, 104),
(102, 103, 104),
(105, 107, NULL),
(106, 107, NULL),
(108, 110, NULL),
(109, 110, NULL),
(111, 113, 114),
(112, 113, 114),
(115, 117, 118),
(116, 117, 118),
(119, 121, NULL),
(120, 121, NULL),
(122, 124, NULL),
(123, 124, NULL),
(125, 127, 128),
(126, 127, 128),
(129, 131, NULL),
(130, 131, NULL),
(132, 134, NULL),
(133, 134, NULL);

INSERT INTO rabota (id_people, firma, adrec, dolgnost) VALUES
(101, 'mir', 'mirovay45', 'rucovoditel'),
(102, 'rim', 'rimonovna35', 'advocat'),
(103, 'darovna', 'darov85', 'laborant'),
(104, null, null, null),
(105, 'sorevnani', 'sorevn65', 'programist'),
(106, null, null, null),
(107, 'petrushka', 'petr72', 'boss'),
(108, 'ukrop', 'ukropovna89', 'bazist'),
(109, 'rim', 'rimovna28', 'administrator'),
(110, 'marinovna', 'marin97', 'advocat'),
(111, 'remen', 'remen74', 'barmen'),
(112, 'rebus', 'rebusnaya83', 'laborant'),
(113, 'talant', 'talantova98', 'advocat'),
(114, null, null, null),
(115, null, null, null),
(116, 'rimbel', 'rimbel54', 'rucovoditel'),
(117, 'sir', 'sirovna', 'barmen'),
(118, null, null, null),
(119, null, null, null),
(120, 'remon', 'remon89', 'barmen'),
(121, null, null, null),
(122, 'soup', 'soup52', 'povar'),
(123, 'serp', 'serpovna', 'administrator'),
(124, 'selestiya', 'selestiya1,', 'bog'),
(125, 'turma', 'turemnaya85', 'ohranik'),
(126, 'ofic', 'ofisnaya65', 'boss'),
(127, null, null, null),
(128, null, null, null),
(129, 'limur', 'limurnaya83', 'veterenar'),
(130, 'marin', 'marino87', 'psiholog'),
(131, 'sever', 'severnaya', 'stroitel'),
(132, 'roman', 'reman45', 'remontnick'),
(133, 'raisa', 'gil54', 'konsultant'),
(134, null, null, null);
