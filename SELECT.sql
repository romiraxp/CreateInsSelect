---Запросы к Заданию 2---
--Название и продолжительность самого длительного трека.--
select track_name, track_time 
	from tracks
  where track_time = (select max(track_time) from tracks);

--Название треков, продолжительность которых не менее 3,5 минут.---
select track_name, track_time 
	from tracks
  where track_time > '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.--
select collection_name, collection_year 
	from collection 
  where collection_year 
    between '2018-01-01' 
    and '2020-12-31';

--Исполнители, чьё имя состоит из одного слова.--
select author_name 
	from author 
  where author_name 
    not like '% %';

--Название треков, которые содержат слово «мой» или «my»--
select track_name 
	from tracks
  where upper(track_name) 
    like '%MY%' 
   	or upper(track_name) like '%МОЙ%';


---Запросы к Заданию 3---
--Количество исполнителей в каждом жанре.--
select kindofmusic, count(kindofmusicauthor.kindofmusic_id) kom 
	from kindofmusic as k
		join kindofmusicauthor 
		on k.kindofmusic_id = kindofmusicauthor.kindofmusic_id 
	group by k.kindofmusic
	order by kom;

--Количество треков, вошедших в альбомы 2019–2020 годов.--
select album_name, album_year, count(track_name) as cnt_tracks 
	from albums as a 
		join tracks as t 
		on a.album_id = t.album_id
    where extract(year from a.album_year) >= '2019'  
	  and extract(year from a.album_year) <= '2020' 
    group by album_name, album_year;

--Средняя продолжительность треков по каждому альбому.--
select album_name, avg(track_time) as trtime 
	from albums as a 
		join tracks as t 
		on a.album_id = t.album_id 
	group by album_name;


--Все исполнители, которые не выпустили альбомы в 2020 году.--
select author_name, album_year as ay 
	from author as a
	join albums as a2 
	on a.author_id = a2.album_id
  where extract(year from album_year) <> '2020'
  group by a.author_name, ay;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).--
select collection_name, author_name 
	from collection as c 
	join albumtrackauthor as a 
	  on a.collection_id = c.collection_id
	join albumauthor as b 
	  on b.album_id = a.album_id
	join author as ath 
	  on ath.author_id = b.author_id 
  where ath.author_name like '%РУК%'
  group by collection_name, author_name;

---Запросы к Заданию 4---
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.--
--select album_name,author_name,kindofmusic,count(kindofmusicauthor.author_id)
--	from albums 
--	join albumauthor 
--	  on albumauthor.album_id = albums.album_id
--	join author as ath 
--	  on ath.author_id = albumauthor.author_id
--	join kindofmusicauthor 
--	  on kindofmusicauthor.kindofmusic_id = ath.author_id 
--	join kindofmusic 
--	  on kindofmusic.kindofmusic_id = kindofmusicauthor.kindofmusic_id
--  group by album_name,author_name,kindofmusic;

--Наименования треков, которые не входят в сборники.--
--select track_name,album_id 
--	from tracks as t 
--	join albums as a
--	  on a.album_id = t.album_id 
--	join as a2 on a2.album_id = a.album_id
--  group by track_name;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.--

--Названия альбомов, содержащих наименьшее количество треков.--
