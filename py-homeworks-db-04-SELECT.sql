SELECT
    genres.name AS genre_name,
    COUNT(artist_id) AS count_of_artists
FROM
    artist_genre
RIGHT JOIN genres on genres.id = artist_genre.genre_id
GROUP BY
         genres.name;

SELECT
    COUNT(*) AS count_of_tracks
FROM
     tracks
INNER JOIN albums on albums.id = tracks.album_id
WHERE albums.release_year BETWEEN DATE('2019-1-1') AND DATE('2020-1-1');


SELECT
    albums.name AS album_name,
    AVG(tracks.duration) AS average_duration
FROM
     tracks
INNER JOIN albums on albums.id = tracks.album_id
GROUP BY
         albums.name;

SELECT
    artists.name AS artist_name
FROM
    artists
LEFT JOIN artist_album on artists.id = artist_album.artist_id
INNER JOIN albums on artist_album.album_id = albums.id
WHERE
      release_year <> DATE('2020-1-1');

SELECT DISTINCT
    collections.name AS collection_name
FROM
    collections
INNER JOIN collection_track on collections.id = collection_track.collection_id
INNER JOIN tracks on collection_track.collection_id = tracks.id
INNER JOIN artist_album on tracks.album_id = artist_album.album_id
WHERE
      artist_album.artist_id = 2;

SELECT
    albums.name AS album_name
FROM
    albums
INNER JOIN artist_album on albums.id = artist_album.album_id
INNER JOIN artist_genre on artist_album.artist_id = artist_genre.artist_id
GROUP BY album_name
HAVING
      COUNT(artist_genre.genre_id) > 1;

SELECT
    tracks.name AS track_name
FROM
    tracks
LEFT JOIN collection_track on tracks.id = collection_track.track_id
WHERE collection_track.track_id IS NULL;

SELECT
    artists.name AS artist_name
FROM
    artists
INNER JOIN artist_album on artists.id = artist_album.artist_id
INNER JOIN tracks on artist_album.album_id = tracks.album_id
WHERE tracks.duration = (SELECT
                                MIN(duration)
                         FROM
                                tracks);

SELECT
    albums.name AS album_name
FROM
    albums
LEFT JOIN tracks on albums.id = tracks.album_id
GROUP BY albums.name
HAVING COUNT(*) = (SELECT MIN(albums_size.count_tracks)
FROM (SELECT tracks.album_id,
             COUNT(tracks.id) AS count_tracks
FROM tracks
GROUP BY tracks.album_id) AS albums_size);