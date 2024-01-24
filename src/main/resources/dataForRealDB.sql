insert into BOOK (TITLE, DESCRIPTION) values ('Oryx and Crake', 'MaddAddam is a serie of 3 dystopian science-fiction novels that deals with extreme genetic engineering.'); /*1*/
insert into BOOK (TITLE, DESCRIPTION) values ('The year of the flood', 'MaddAddam is a serie of 3 dystopian science-fiction novels that deals with extreme genetic engineering.');/*2*/
insert into BOOK (TITLE, DESCRIPTION) values ('MaddAddam', 'MaddAddam is a serie of 3 dystopian science-fiction novels that deals with extreme genetic engineering.');/*3*/
insert into BOOK (TITLE, DESCRIPTION) values ('1Q84', 'Set in 1984 in Tokyo, the story concerns an assassin who stumbles upon an alternate world she refers to as 1Q84. There, she becomes embroiled in a conspiracy involving an abusive religious cult.');/*4*/
insert into BOOK (TITLE, DESCRIPTION) values ('De opwindvogelkronieken', 'Novel about Toru, a bored young man living a basic life in Tokyo. When Toru’s daily routines are interrupted by increasingly odd and chaotic events, he must undergo a metaphysical journey that tests the limits of free will and corporeality. ');/*5*/
insert into book (title) values ('Design Patterns');/*6*/
insert into book (title) values ('Anderland: De Stad Van Gouden Schaduw'); /*7*/
insert into book (title) values ('Anderland:  Rivier van blauw vuur'); /*8*/
insert into book (title) values ('Anderland:  Berg van zwart glas'); /*9*/
insert into book (title) values ('Anderland:  Zee van zilveren licht'); /*10*/
insert into book (title) values ('Neuromancer '); /*11*/
insert into book (title) values ('Snow crash'); /*12*/
insert into book (title) values ('Rainbows’s end'); /*13*/
insert into book (title) values ('Hard-boiled wonderland en het einde van de wereld'); /*14*/
insert into book (title) values ('Ready Player one'); /*15*/
insert into book (title) values ('Refactoring'); /*16*/
insert into book (title) values ('Extreme Programming Explained'); /*17*/
insert into book (title) values ('Implementation patterns'); /*18*/
insert into book (title) values ('Clean code'); /*19*/

insert into author (NAME, DESCRIPTION, COUNTRY)
values ( 'Margaret Atwood',
         'Margaret Atwood was born in 1939 in Ottawa and grew up in northern Ontario, Quebec, and Toronto. Throughout her writing career, Margaret Atwood has received numerous awards and honourary degrees.',
         'Canada'); /*1*/

insert into author (NAME, DESCRIPTION, COUNTRY)
values ( 'Haruki Murakami',
         'Haruki Murakami  is a popular contemporary Japanese writer and translator. His work has been described as ''easily accessible, yet profoundly complex''.',
         'Japan'); /*2*/

insert into author (NAME, DESCRIPTION, COUNTRY)
values ( 'Erich Gamma', 'One of the ''Gang of four''.', 'Switzerland'); /*3*/

insert into author (NAME, DESCRIPTION, COUNTRY)
values ( 'Richard Helm', 'One of the ''Gang of four''.', 'Australia'); /*4*/

insert into author (NAME, DESCRIPTION, COUNTRY)
values ( 'Ralph Johnson', 'One of the ''Gang of four''.', 'USA'); /*5*/

insert into author (NAME, DESCRIPTION, COUNTRY)
values ( 'John Vlissides', 'One of the ''Gang of four''.', 'USA'); /*6*/
insert into author (name) values ('Tad Williams'); /*7*/
insert into author (name) values ('William Gibson'); /*8*/
insert into author (name) values ('Neal Stephenson'); /*9*/
insert into author (name) values ('Vernor Vinge'); /*10*/
insert into author (name) values ('Martin Fowler'); /*11*/
insert into author (name) values ('Kent Beck'); /*12*/
insert into author (name) values ('Robert C Martin'); /*13*/


insert into book_authors (books_id, authors_id) values (1, 1);
insert into book_authors (books_id, authors_id) values (2, 1);
insert into book_authors (books_id, authors_id) values (3, 1);
insert into book_authors (books_id, authors_id) values (4, 2);
insert into book_authors (books_id, authors_id) values (5, 2);
insert into book_authors (books_id, authors_id) values (6, 3);
insert into book_authors (books_id, authors_id) values (6, 4);
insert into book_authors (books_id, authors_id) values (6, 5);
insert into book_authors (books_id, authors_id) values (6, 6);
insert into book_authors (books_id, authors_id) values (7, 7);
insert into book_authors (books_id, authors_id) values (8, 7);
insert into book_authors (books_id, authors_id) values (9, 7);
insert into book_authors (books_id, authors_id) values (10, 7);
insert into book_authors (books_id, authors_id) values (11, 8);
insert into book_authors (books_id, authors_id) values (12, 9);
insert into book_authors (books_id, authors_id) values (13, 10);
insert into book_authors (books_id, authors_id) values (14, 2);
insert into book_authors (books_id, authors_id) values (15, 10);
insert into book_authors (books_id, authors_id) values (16, 11);
insert into book_authors (books_id, authors_id) values (17, 12);
insert into book_authors (books_id, authors_id) values (18, 12);
insert into book_authors (books_id, authors_id) values (19, 13);


insert into SERIE(NAME) values ('Oryx and Crake');
insert into SERIE(NAME) values ('Anderland');

