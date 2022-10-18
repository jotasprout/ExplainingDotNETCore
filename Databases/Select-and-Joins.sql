/*
 * Every DQL statement returns a result set
 * Result Set = temp table returned from a DQL statement
 * the "*" references all columns in table
 * */
select * from music.artists;
select name from music.artists;

/* Aliases 
 * 
 */
-- for columns
select name as artist_names from music.artists;
-- for tables
select fluffybunny.name from music.artists as fluffybunny;

select * from music.songs;

-- WHERE filters records by a condition
select * from music.songs where album_fk = 2;

select * from music.songs where name = album_fk =1 or album_fk = 4;

select * from music.songs where album_fk in (1,2,3,4);

select * from music.playlists;

select * from music.playlists_songs;

select * from music.songs where album_fk between 1 and 4;
select * from music.songs where album_fk < 5;
select * from music.songs where album_fk > 0 and < 5;

select * from music.songs where name != 'Papercut';
-- also for "not"
select * from music.songs where name <> 'Papercut';
-- everything less than and greater than "Papercut"
select * from music.songs where not name = 'Papercut';

-- null references
select * from music.songs where name is null;

select * from music.songs;

-- "%" means one or more characters after letter "B"
select * from music.songs where name like 'B%';
select * from music.songs where name like 'B%n';
-- underscore means single character

select * from music.songs order by name desc;
-- Also asc

select * from music.songs order by album_fk desc, name asc;

/*
 * Aggregate Functions
 * 	- Calculations on a grouping of records producing one results
 * 
 * count()
 */

select count(*) as song_count from music.songs;
-- without "as song_count" there would be no column name


select sum(album_fk) as album_fk_sum from music.songs;

select max(album_fk) as largest_num_in_albumfk_column from music.songs;

select min(album_fk) as largest_num_in_albumfk_column from music.songs;



/*
 * group by
 * allows aggregate functions to work on smaller pockets of recorrds
 * */
-- without "album_fk" before count below, we would see the song counts but not what albums they are on
select album_fk, count(album_fk) as song_count from music.songs group by album_fk having count(album_fk) > 11;

/*
 * Difference between where and having?
 * - where filters the original result set (before group by and aggregate function)
 * - having filters after the new result set has been generated (after group by and the aggregate function)
 * - where and having only work with aggregate functions
 * 
 * 
 * Scalar Functions
 * 	- manipulate data in one specific record
 * */

select 'Hello World';


-- numbers
select abs(-99); -- absolute value
select floor(88.77); -- rounds down
select ceiling(88.77); -- rounds up 
select round (88.77, 0); -- rounds to nearest whole number
select round (88.77, 1); -- moves decimal over so it's 88.80


-- characters
select upper('HeLlO WoRlD');
select lower('HeLlO WoRlD');
select len('HeLlO WoRlD'); -- length of string


select upper(name) from music.songs;
select name, len(name) from music.songs; -- shows name of song and number of characters



-- JOINS
-- SQL interprets in reverse order ... from "end" of statement to beginnning
select * from music.songs as s;
-- or 
select * from music.songs s
inner join music.albums as a on s.album_fk = a.id;

-- get ride of extra columns and name remaining ones
select s.name as song_name, a.name as album_name, ar.name as artist_name from music.songs s
inner join music.albums as a on s.album_fk = a.id
inner join music.artists as ar on a.artist_fk = ar.id;


select s.name as song_name, a.name as album_name, ar.name as artist_name from music.songs s;
--inner join music.albums as a on s.album_fk = a.id
--inner join music.artists as ar on a.artist_fk = ar.id;


select * from music.songs as s
inner join music.albums as a on s.album_fk = a.id;


-- Other JOINS

/*
 * JOINS are a way of combining multiple tables
 * 
 * LEFT table means the FIRST table we reference - everything on the LEFT and whatever on the right that matches a condition
 * 
 * RIGHT table = SECOND table referenced - everything on the RIGHT and whatever on the left that matches a condition
 * 
 * FULL join (also called OUTER join) - all values from both tables
 * 
 * INNER displays only rows that the common column has in common
 * 
 * */


-- SETS

/*
 * Combines tows of two tables IF
 *   - same number of columns 
 *   - columns are same data type
 * 
 * Types of Sets:
 * - UNION combines all from both table
 * - INTERSECT only displays rows that have exact same values 
 * - EXCEPT displays everything from first table and removes records that have same values
 * 
 * */

select * from music.playlists 
union
select * from music.artists;




















