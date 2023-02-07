/*Заполните базу данных из предыдущего домашнего задания. В ней должно быть:
не менее 8 исполнителей;
не менее 5 жанров;
не менее 8 альбомов;
не менее 15 треков;
не менее 8 сборников. */

INSERT INTO artists(id, name)
VALUES (1, 'Billy'), (2, 'Tommy'), (3, 'Johny'),
       (4, 'Andy'), (5, 'Kaley'),
       (6, 'Timmy'), (7, 'Jerry'), (8, 'Carly Rae Jepsen');

INSERT INTO genres(id, name)
VALUES (1, 'Pop'), (2, 'Electronic'), (3, 'Blues'),
       (4, 'Cute rock'), (5, 'Jazz');

INSERT INTO albums(id, name, release_year)
VALUES (1, 'Golden disk', '2020-01-01'),
       (2, 'Mic check vol.1', '2009-01-01'),
       (3, 'Dismissed', '2014-01-01'),
       (4, 'Before', '2005-01-01'),
       (5, 'Mic check vol.2', '2018-01-01'),
       (6, 'Fiesta time', '2018-01-01'),
       (7, 'Street show', '1936-01-01'),
       (8, 'Collision', '2022-01-01');

INSERT INTO tracks(id, album_id, name, duration)
VALUES (1, 1, 'Track 1', 180), (2, 1, 'Track 2', 210),
       (3, 1, 'Track 3', 250), (4, 1, 'Track 4', 240),
       (5, 2, 'My destination', 90), (6, 2, 'Not my destination', 120),
       (7, 3, 'Dismissed', 210), (8, 4, 'Before', 180),
       (9, 5, 'True', 190), (10, 5, 'False', 191),
       (11, 6, 'Dancing', 210), (12, 6, 'Fire', 230),
       (13, 7, 'Go home', 2), (14, 8, 'Sometimes', 83),
       (15, 8, 'Panic', 600);

INSERT INTO collections(id, name, release_year)
VALUES (1, 'Energetic', '2020-01-01'),
       (2, 'Slow', '2009-01-01'),
       (3, 'Old', '2014-01-01'),
       (4, 'Last year', '2005-01-01'),
       (5, 'Newest', '2012-01-01'),
       (6, 'Popular', '2012-01-01'),
       (7, 'Redaction choice', '1936-01-01'),
       (8, 'Melodic', '2022-01-01');

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 4),
       (6, 1), (7, 3), (8, 1), (8, 4);

INSERT INTO artist_album(artist_id, album_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4),
       (5, 5), (6, 6), (7, 7), (8, 8);

INSERT INTO collection_track(collection_id, track_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
       (6, 6), (7, 7), (8, 8), (1, 2), (1, 3),
       (2, 3), (5, 6), (5, 7), (5, 8), (6, 8);