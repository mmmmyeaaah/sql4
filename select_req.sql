select name, year from album
where year = 2018;

select name, duration from track
order by duration desc
limit 1;

select name from track
where duration > '3:30';

select name from compilation
where year between 2018 and 2020;

select name from executor
where name not like '% %';

select name from track
where name like '%My%';