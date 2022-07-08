drop database if exists movies;
create database movies character set utf8mb4
collate utf8mb4_croatian_ci;
use movies;

create table user(
user_id int primary key auto_increment,
email varchar(25) not null,
password varchar(50) not null
);


create table movie(
movie_id int primary key auto_increment,
title varchar(100) not null,
year year(4),
movie_genre int 
);

create table genre(
genre_id int primary key auto_increment,
title varchar(100) not null
);


create table movie_genre(
movie_id int,
genre_id int
);


alter table movie_genre add foreign key (movie_id) references movie(movie_id);

alter table movie_genre add foreign key (genre_id) references genre(genre_id);
