--наполнение таблиц--
--наполняем таблицу жанров музыки--
insert into kindofmusic(kindofmusic)
values('БЛЮЗ'); --1

insert into kindofmusic(kindofmusic)
values(UPPER('вокальная музыка')); --2

insert into kindofmusic(kindofmusic)
values(Upper('гранж')); --3

insert into kindofmusic(kindofmusic)
values(upper('джаз')); --4

insert into kindofmusic(kindofmusic)
values(upper('кантри')); --5

insert into kindofmusic(kindofmusic)
values(upper('классика')); --6

insert into kindofmusic(kindofmusic)
values(upper('рок')); --7

insert into kindofmusic(kindofmusic)
values(upper('техно')); --8

insert into kindofmusic(kindofmusic)
values(upper('панк')); --9

insert into kindofmusic(kindofmusic)
values(upper('фолк')); --10

insert into kindofmusic(kindofmusic)
values(upper('хип-хоп')); --11

insert into kindofmusic(kindofmusic)
values(upper('шансон')); --12

insert into kindofmusic(kindofmusic)
values(upper('поп музыка')); --13

--наполняем таблицу исполнители--
insert into author(author_name)
values(UPPER('dabro')); --1
insert into author(author_name)
values(UPPER('iowa')); --2
insert into author(author_name)
values(UPPER('руки вверх')); --3
insert into author(author_name)
values(UPPER('тимати')); --4
insert into author(author_name)
values(UPPER('филипп киркоров')); --5
insert into author(author_name)
values(UPPER('сплин')); --6
insert into author(author_name)
values(UPPER('наутилус')); --7
insert into author(author_name)
values(UPPER('бетховен')); --8
insert into author(author_name)
values(UPPER('шопен')); --9

--наполняем промежуточную таблицу kindofmusicauthor--
insert into kindofmusicauthor
values(13,1);
insert into kindofmusicauthor
values(13,2);
insert into kindofmusicauthor
values(13,3);
insert into kindofmusicauthor
values(13,4);
insert into kindofmusicauthor
values(6,9);
insert into kindofmusicauthor
values(6,8);
insert into kindofmusicauthor
values(7,6);
insert into kindofmusicauthor
values(7,7);
insert into kindofmusicauthor
values(11,4);
insert into kindofmusicauthor
values(11,3);
insert into kindofmusicauthor
values(11,5);

--наполняем таблицу album--
--сплин--
insert into albums(album_name,album_year )
values(UPPER('Обман зрения'),'2019-01-01'); --1

--руки вверх--
insert into albums(album_name,album_year )
values(UPPER('Дышите равномерно'),'2019-01-01'); --2
insert into albums(album_name,album_year )
values(UPPER('Не бойся, я с тобой!'),'2020-01-01'); --3
insert into albums(album_name,album_year )
values(UPPER('Огонь'),'2001-01-01'); --4

--ТИМАТИ--
insert into albums(album_name,album_year )
values(UPPER('Black Star My'),'2006-01-01'); --5
insert into albums(album_name,album_year )
values(UPPER('13'),'2013-01-01'); --6
insert into albums(album_name,album_year )
values(UPPER('The Boss'),'2009-01-01'); --7

--наполняем таблицу tracks--
--сплин--
insert into tracks(album_id,track_name,track_time)
values(1,'Дочь самурая','00:03:36'); --1

insert into tracks(album_id,track_name,track_time)
values(1,'Ковш','00:03:35'); --2

insert into tracks(album_id,track_name,track_time)
values(1,'Волшебное слово','00:04:24'); --3

--руки вверх--
insert into tracks(album_id,track_name,track_time)
values(2,'Доброе утро','00:03:30'); --4

insert into tracks(album_id,track_name,track_time)
values(2,'Мой Малыш','00:02:50'); --5

insert into tracks(album_id,track_name,track_time)
values(2,'Студент','00:01:30'); --6

insert into tracks(album_id,track_name,track_time)
values(2,'Здравствуй','00:06:01'); --7

--тимати--
insert into tracks(album_id,track_name,track_time)
values(6,'В Клубе','00:04:25'); --8

insert into tracks(album_id,track_name,track_time)
values(6,'Жара','00:04:16'); --9

insert into tracks(album_id,track_name,track_time)
values(6,'Black Star My','00:04:53'); --10

--наполняем таблицу collection--
insert into collection(collection_name,collection_year)
values('Сборник 1','2020-06-02'); --1

insert into collection(collection_name,collection_year)
values('Сборник 2','2010-06-02'); --2

insert into collection(collection_name,collection_year)
values('Сборник 3','2005-07-01'); --3

insert into collection(collection_name,collection_year)
values('Сборник 4','2003-03-09'); --4

insert into collection(collection_name,collection_year)
values('Сборник 5','2010-06-02'); --5

insert into collection(collection_name,collection_year)
values('Сборник 6','2018-01-01'); --6

insert into collection(collection_name,collection_year)
values('Сборник 7','2008-06-02'); --7

insert into collection(collection_name,collection_year)
values('Сборник 8','2019-12-01'); --8

--наполняем промежуточную таблицу albumauthor--
insert into albumauthor
values(5,4); --1

insert into albumauthor
values(6,4); --2

insert into albumauthor
values(7,4); --3

insert into albumauthor
values(2,3); --4

insert into albumauthor
values(3,3); --5

insert into albumauthor
values(1,6); --6

insert into albumauthor
values(3,4); --7

insert into albumauthor
values(6,3); --8

insert into albumauthor
values(1,3); --9

--наполняем промежуточную таблицу albumtrackauthor--
insert into albumtrackauthor
values(1,1,7); --1

insert into albumtrackauthor
values(5,7,1); --2

insert into albumtrackauthor
values(5,7,4); --3

insert into albumtrackauthor
values(6,7,1); --4

insert into albumtrackauthor
values(2,5,2); --5

insert into albumtrackauthor
values(2,5,3); --6

insert into albumtrackauthor
values(2,6,2); --7

insert into albumtrackauthor
values(2,7,3); --8
