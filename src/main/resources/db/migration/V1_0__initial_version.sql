create table book
(
    id           integer      not null GENERATED ALWAYS AS IDENTITY,
    author       varchar(255) not null,
    price_in_eur integer check (price_in_eur <= 200 AND price_in_eur >= 0),
    title        varchar(255) not null,
    releaseYear  varchar(4) check (releaseYear == '19%' OR releaseYear == '20%'),
    primary key (id)
);
create table booksuser
(
    id       integer not null GENERATED ALWAYS AS IDENTITY,
    password varchar(255),
    role     varchar(255),
    username varchar(255),
    primary key (id)
);
create table genre
(
    id   integer      not null GENERATED ALWAYS AS IDENTITY,
    name varchar(255) not null,
    primary key (id)
);
create table Movies
(
    id          integer      not null GENERATED ALWAYS AS IDENTITY,
    title       varchar(255) not null,
    Director    varchar(255),
    releaseYear varchar(4) check ((releaseYear == '19%' OR releaseYear == '20%') AND releaseYear <= (YEAR(GETDATE())+5)),
    book_id     integer,
    primary key (id)
);