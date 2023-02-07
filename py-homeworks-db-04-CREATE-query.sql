create table if not exists genres(
	id serial primary key,
	name varchar(50) not null
	);

create table if not exists artists(
	id serial primary key,
	name varchar(50) not null
	);

create table if not exists artist_genre(
	artist_id integer references artists(id),
	genre_id integer references genres(id),
	constraint pk_artist_genre primary key (genre_id, artist_id)
	);

create table if not exists albums(
	id serial primary key,
	name varchar(50) not null,
	release_year date
	);

create table if not exists artist_album(
	artist_id integer references artists(id),
	album_id integer references albums(id),
	constraint id primary key (album_id, artist_id)
	);

create table if not exists collections(
	id serial primary key,
	name varchar(50) not null,
	release_year date
	);

create table if not exists tracks(
	id serial primary key,
	album_id integer references albums(id),
	name varchar(50) not null,
	duration integer
	);

create table if not exists collection_track(
	collection_id integer references collections(id),
	track_id integer references tracks(id),
	constraint pk_collection_track primary key (collection_id, track_id)
	);
