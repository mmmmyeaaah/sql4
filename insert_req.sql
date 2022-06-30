insert into executor(name)
values
    ('Linkin Park'),
    ('Madonna'),
    ('Armin van Buuren'),
    ('Justin Timberlake'),
    ('50 cent'),
    ('Tiesto'),
    ('Ludovico Einaudi'),
    ('Eldzhey');

insert into genre(name)
values
    ('rock'),
    ('rap'),
    ('pop'),
    ('classic'),
    ('trance');

insert into album(name, year)
values
    ('Meteora', 2003),
    ('Music', 2000),
    ('Imagine', 2008),
    ('Justified', 2002),
    ('Curtis', 2007),
    ('Just be', 2004),
    ('Underwater', 2022),
    ('143', 2018),
    ('sayonara boy opal', 2020);

insert into executor_album(executor_id, album_id)
values
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (8, 9);

insert into track(name, duration, album_id)
values
    ('Hit the floor', '2:44', 1)
    ('Easier to run', '3:24', 1),
    ('My music', '3:46', 2),
    ('Amazing', '3:43', 2),
    ('Imagine', '9:27', 3),
    ('Face to face', '7:29', 3),
    ('Cry me a river', '4:49', 4),
    ('like i love you', '4:44', 4),
    ('I get money', '3:44', 5),
    ('Ayo technology', '4:08', 5),
    ('Ur', '6:00', 6),
    ('Just be', '8:45', 6),
    ('Flora', '5:41', 7),
    ('Luminous', '4:43', 7),
    ('Vrum vrum', '4:00', 8),
    ('143', '3:48', 8),
    ('fans', '2:36', 9),
    ('fans', '2:36', 9);

insert into compilation(name, year)
values
    ('2000s', 2007),
    ('Rock', 2004),
    ('Club', 2019),
    ('Pops', 2018),
    ('Hip-hop', 2019),
    ('Class', 2020),
    ('Dream', 2022),
    ('Dance', 2021);

insert into compilation_track(compilation_id, track_id)
values
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6),
    (1, 7),
    (1, 8),
    (1, 9),
    (1, 10),
    (2, 1),
    (2, 2),
    (3, 5),
    (3, 6),
    (3, 11),
    (3, 12),
    (4, 9),
    (4, 10),
    (5, 13),
    (5, 14),
    (6, 13),
    (6, 14),
    (6, 5),
    (6, 6),
    (7, 3),
    (7, 4),
    (7, 7),
    (8, 8),
    (5, 15),
    (5, 16),
    (8, 3),
    (8, 4),
    (8, 7),
    (8, 8);

insert into genre_executor(genre_id, executor_id)
values
    (1, 1),
    (2, 8),
    (2, 5),
    (2, 1),
    (3, 2),
    (3, 4),
    (4, 7),
    (5, 3),
    (5, 6);
