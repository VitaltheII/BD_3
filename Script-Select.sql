SELECT name_album, year_album FROM album
WHERE year_album >= '2018-01-01';

SELECT name_track, duration FROM track
WHERE duration >= (SELECT MAX(duration) from track);

SELECT name_track FROM track
WHERE duration >= 3.30;

SELECT name_mixtape, year_mixtape FROM mixtape
WHERE year_mixtape BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name_artist FROM artist
WHERE name_artist NOT LIKE '% %';

SELECT name_track FROM track
WHERE LOWER(name_track) SIMILAR TO '(my %|% my %)';