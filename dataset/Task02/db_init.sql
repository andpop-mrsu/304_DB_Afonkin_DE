-- SQL script for creating db_init.db database
-- Generated: 2025-10-02 23:15:49

-- Drop existing tables
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS users;

-- Create tables
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    gender TEXT NOT NULL,
    register_date DATE NOT NULL,
    occupation TEXT NOT NULL
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    year INTEGER,
    genres TEXT NOT NULL
);

CREATE TABLE ratings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    rating REAL NOT NULL,
    timestamp INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (movie_id) REFERENCES movies (id)
);

CREATE TABLE tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    tag TEXT NOT NULL,
    timestamp INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (movie_id) REFERENCES movies (id)
);

-- Load data
-- Users
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    1,
    'Devonte Stamm',
    'marianne.krajcik@bartoletti.com',
    'male',
    '2010-09-19',
    'technician')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    2,
    'Merritt Grimes',
    'rempel.yvette@kertzmann.com',
    'male',
    '2018-06-12',
    'other')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    3,
    'Dianna Herzog',
    'jarrell.stokes@gmail.com',
    'female',
    '2013-11-19',
    'writer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    4,
    'Jamel Nader',
    'edgar.bayer@kohler.com',
    'male',
    '2012-09-28',
    'technician')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    5,
    'Immanuel Bode',
    'jamal68@yahoo.com',
    'male',
    '2013-05-20',
    'other')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    6,
    'Dwight Reichel',
    'camron36@yahoo.com',
    'male',
    '2012-04-06',
    'executive')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    7,
    'Holden Lueilwitz',
    'hdaugherty@hotmail.com',
    'male',
    '2013-04-01',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    8,
    'Pablo Kuhlman',
    'arden.lemke@leffler.com',
    'male',
    '2015-10-08',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    9,
    'Roscoe Rice',
    'katelynn.heathcote@thompson.org',
    'male',
    '2015-04-24',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    10,
    'Arlene Harvey',
    'crist.shannon@hansen.com',
    'female',
    '2007-01-26',
    'lawyer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    11,
    'Martina Kertzmann',
    'kling.allen@gmail.com',
    'female',
    '2019-04-03',
    'other')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    12,
    'Casandra Osinski',
    'qrodriguez@nader.com',
    'female',
    '2005-09-15',
    'other')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    13,
    'Chester Price',
    'emery.bahringer@kovacek.net',
    'male',
    '2019-10-04',
    'educator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    14,
    'Westley Wisoky',
    'roberts.soledad@herzog.com',
    'male',
    '2016-04-13',
    'scientist')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    15,
    'Geovany Ratke',
    'lance26@white.com',
    'male',
    '2007-02-22',
    'educator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    16,
    'Zella Schamberger',
    'lucinda.jakubowski@yahoo.com',
    'female',
    '2006-08-23',
    'entertainment')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    17,
    'Dina Lindgren',
    'wolf.sedrick@yahoo.com',
    'female',
    '2017-08-06',
    'programmer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    18,
    'Taya Rath',
    'dickinson.tre@hotmail.com',
    'female',
    '2005-05-06',
    'other')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    19,
    'Eda Steuber',
    'hfranecki@johnson.com',
    'female',
    '2016-05-22',
    'librarian')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    20,
    'Sherwood Watsica',
    'king.demarco@crooks.info',
    'male',
    '2007-04-24',
    'homemaker')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    21,
    'Charlene Medhurst',
    'wilmer79@yahoo.com',
    'female',
    '2010-12-07',
    'writer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    22,
    'Eli Wilderman',
    'izabella.ledner@gmail.com',
    'male',
    '2015-06-15',
    'writer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    23,
    'Dayana Wiegand',
    'tyshawn39@jast.com',
    'female',
    '2010-05-23',
    'artist')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    24,
    'Gail Hintz',
    'stiedemann.jonas@yahoo.com',
    'female',
    '2006-08-10',
    'artist')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    25,
    'Gaston Rippin',
    'ycruickshank@hotmail.com',
    'male',
    '2019-05-01',
    'engineer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    26,
    'Lyda Friesen',
    'jakubowski.alysha@hotmail.com',
    'female',
    '2020-06-29',
    'engineer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    27,
    'Estell Dicki',
    'yjones@tremblay.com',
    'female',
    '2007-11-11',
    'librarian')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    28,
    'Savion Upton',
    'emmitt.johnson@yahoo.com',
    'male',
    '2008-03-05',
    'writer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    29,
    'Mellie Barrows',
    'stark.opal@collins.com',
    'female',
    '2006-06-21',
    'programmer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    30,
    'Evalyn Abshire',
    'dolores.ernser@moore.info',
    'female',
    '2013-05-07',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    31,
    'Cora DuBuque',
    'harley.donnelly@yahoo.com',
    'female',
    '2016-01-13',
    'artist')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    32,
    'Iliana Lowe',
    'jerde.maudie@yahoo.com',
    'female',
    '2008-02-05',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    33,
    'Mario Dibbert',
    'rex.fadel@schowalter.com',
    'male',
    '2020-10-26',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    34,
    'Glenda Boyle',
    'russell18@hotmail.com',
    'female',
    '2005-05-15',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    35,
    'Glenna Labadie',
    'lily.ortiz@ritchie.com',
    'female',
    '2013-06-27',
    'homemaker')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    36,
    'Piper Spinka',
    'parker.dimitri@gmail.com',
    'female',
    '2010-12-20',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    37,
    'Bertha Metz',
    'mohr.trisha@yahoo.com',
    'male',
    '2019-02-14',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    38,
    'Laila Block',
    'hweissnat@gmail.com',
    'female',
    '2020-07-21',
    'other')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    39,
    'Madelynn Abshire',
    'myah92@yundt.com',
    'female',
    '2013-08-27',
    'entertainment')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    40,
    'Aiyana Jenkins',
    'reese13@breitenberg.info',
    'female',
    '2015-05-02',
    'scientist')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    41,
    'Stone Greenholt',
    'xconroy@greenfelder.info',
    'male',
    '2008-06-01',
    'engineer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    42,
    'America Mante',
    'lucio.braun@gmail.com',
    'female',
    '2017-11-07',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    43,
    'Ottilie Hudson',
    'qcassin@gmail.com',
    'female',
    '2012-11-03',
    'librarian')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    44,
    'Deonte Hane',
    'constance.kunde@effertz.org',
    'male',
    '2017-11-13',
    'technician')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    45,
    'Leila Kassulke',
    'melyna.doyle@braun.com',
    'female',
    '2009-08-22',
    'programmer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    46,
    'Moriah Mohr',
    'okuneva.jonatan@gmail.com',
    'male',
    '2009-02-20',
    'marketing')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    47,
    'Louisa Orn',
    'ubergnaum@okon.info',
    'male',
    '2017-08-26',
    'marketing')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    48,
    'Hellen Wintheiser',
    'borer.emelia@lynch.com',
    'female',
    '2008-06-24',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    49,
    'Destiney Jones',
    'bosco.mattie@gmail.com',
    'female',
    '2012-04-30',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    50,
    'Cassandra Powlowski',
    'carissa.farrell@crooks.com',
    'female',
    '2015-05-20',
    'writer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    51,
    'Gabe Bashirian',
    'johnny.jerde@hotmail.com',
    'male',
    '2018-08-09',
    'educator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    52,
    'Enrique Stiedemann',
    'bode.cloyd@armstrong.com',
    'male',
    '2008-05-24',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    53,
    'Natasha Ryan',
    'kayley22@hotmail.com',
    'female',
    '2020-05-21',
    'programmer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    54,
    'Watson Mohr',
    'tfunk@yahoo.com',
    'male',
    '2013-03-25',
    'executive')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    55,
    'Mackenzie Kreiger',
    'paucek.orin@hotmail.com',
    'male',
    '2014-01-17',
    'programmer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    56,
    'Valentina Turner',
    'tessie21@gmail.com',
    'female',
    '2011-01-12',
    'librarian')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    57,
    'Marcus Rau',
    'yglover@towne.com',
    'male',
    '2018-11-30',
    'none')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    58,
    'Lizzie Murphy',
    'fchamplin@purdy.com',
    'female',
    '2006-09-07',
    'programmer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    59,
    'Andreane Robel',
    'nick32@kunde.info',
    'female',
    '2005-05-02',
    'educator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    60,
    'Rocky Kohler',
    'dorris.blanda@gerhold.net',
    'male',
    '2017-06-03',
    'healthcare')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    61,
    'Ross Bins',
    'rbernhard@yahoo.com',
    'male',
    '2020-12-25',
    'engineer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    62,
    'Edmund Mueller',
    'gianni13@bode.biz',
    'male',
    '2010-11-23',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    63,
    'Ocie Nikolaus',
    'ladarius.schneider@yahoo.com',
    'female',
    '2005-01-26',
    'marketing')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    64,
    'Zachariah Nolan',
    'derek13@gmail.com',
    'male',
    '2014-03-16',
    'educator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    65,
    'Kira Konopelski',
    'wroberts@jaskolski.com',
    'female',
    '2019-12-25',
    'educator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    66,
    'Enid Stanton',
    'rosemarie.blick@hotmail.com',
    'male',
    '2009-05-12',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    67,
    'Lavada Champlin',
    'yessenia.nader@yahoo.com',
    'female',
    '2008-01-20',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    68,
    'Alaina Beatty',
    'alaina46@schinner.net',
    'female',
    '2019-10-04',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    69,
    'Anne Lynch',
    'hayes.deon@hotmail.com',
    'female',
    '2018-04-16',
    'engineer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    70,
    'Bertrand Bradtke',
    'avery05@hotmail.com',
    'male',
    '2005-04-20',
    'engineer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    71,
    'Ed Gislason',
    'abarton@hotmail.com',
    'male',
    '2014-08-22',
    'scientist')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    72,
    'Augustine Predovic',
    'kelley.considine@cronin.net',
    'female',
    '2007-08-06',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    73,
    'Albertha Littel',
    'marvin.chloe@goyette.com',
    'female',
    '2014-02-07',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    74,
    'Elenor Kuvalis',
    'monahan.josue@ward.biz',
    'female',
    '2012-02-17',
    'scientist')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    75,
    'Katrina Dicki',
    'kolby38@hotmail.com',
    'female',
    '2019-03-17',
    'entertainment')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    76,
    'Neoma Lowe',
    'bette.schmeler@hotmail.com',
    'female',
    '2020-06-10',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    77,
    'Ardella Lockman',
    'rory48@hotmail.com',
    'female',
    '2017-03-25',
    'technician')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    78,
    'Davin Lubowitz',
    'heaney.wendell@yahoo.com',
    'male',
    '2011-02-05',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    79,
    'Myrtie Gutkowski',
    'hermina79@prohaska.com',
    'female',
    '2005-09-01',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    80,
    'Ike Fahey',
    'cleora.olson@bernhard.org',
    'male',
    '2016-04-30',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    81,
    'Victor Abshire',
    'grant.haleigh@yahoo.com',
    'male',
    '2009-11-25',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    82,
    'Paolo Dooley',
    'hane.christ@howe.com',
    'male',
    '2007-01-25',
    'programmer')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    83,
    'Arlie Rutherford',
    'kyler.parker@leuschke.com',
    'female',
    '2017-04-23',
    'other')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    84,
    'Jamarcus Bailey',
    'nathanial.prosacco@gmail.com',
    'male',
    '2006-02-06',
    'executive')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    85,
    'Gonzalo Tillman',
    'aschumm@hotmail.com',
    'male',
    '2011-10-22',
    'educator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    86,
    'Ona Nader',
    'serenity01@price.org',
    'female',
    '2009-10-12',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    87,
    'Aubrey Ritchie',
    'rborer@gmail.com',
    'female',
    '2006-02-02',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    88,
    'Candelario Heidenreich',
    'carter.tiara@west.org',
    'male',
    '2016-12-02',
    'librarian')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    89,
    'Zechariah Kuphal',
    'keenan.eichmann@gmail.com',
    'male',
    '2010-10-05',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    90,
    'Constance Reynolds',
    'nlabadie@gleason.org',
    'female',
    '2007-11-29',
    'educator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    91,
    'Justus Fadel',
    'wolff.sophia@yahoo.com',
    'male',
    '2009-10-18',
    'marketing')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    92,
    'Ludie Weber',
    'marty99@stokes.org',
    'female',
    '2014-10-25',
    'entertainment')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    93,
    'Fritz Graham',
    'waylon.mayer@yahoo.com',
    'male',
    '2010-02-10',
    'executive')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    94,
    'Emerson Murazik',
    'kiel.robel@reynolds.com',
    'male',
    '2020-07-28',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    95,
    'Dovie Goyette',
    'kautzer.rhianna@hotmail.com',
    'female',
    '2006-01-12',
    'administrator')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    96,
    'Francis Deckow',
    'jake35@yahoo.com',
    'male',
    '2007-09-13',
    'artist')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    97,
    'Georgette Schmeler',
    'emerald.turcotte@beahan.com',
    'female',
    '2020-03-20',
    'artist')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    98,
    'Octavia Mayert',
    'bonnie67@yahoo.com',
    'female',
    '2013-10-31',
    'executive')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    99,
    'Stuart Schiller',
    'clair40@lowe.com',
    'male',
    '2006-01-22',
    'student')
;
INSERT INTO users (id, name, email, gender, register_date, occupation) VALUES (
    100,
    'Hyman Gleichner',
    'iliana72@hotmail.com',
    'male',
    '2015-01-06',
    'executive')
;

-- Movies
INSERT INTO movies (id, title, year, genres) VALUES (
    1,
    'Toy Story (1995)',
    1995,
    'Adventure|Animation|Children|Comedy|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    2,
    'Jumanji (1995)',
    1995,
    'Adventure|Children|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    3,
    'Grumpier Old Men (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    4,
    'Waiting to Exhale (1995)',
    1995,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    5,
    'Father of the Bride Part II (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    6,
    'Heat (1995)',
    1995,
    'Action|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    7,
    'Sabrina (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    8,
    'Tom and Huck (1995)',
    1995,
    'Adventure|Children')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    9,
    'Sudden Death (1995)',
    1995,
    'Action')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    10,
    'GoldenEye (1995)',
    1995,
    'Action|Adventure|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    11,
    'American President, The (1995)',
    1995,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    12,
    'Dracula: Dead and Loving It (1995)',
    1995,
    'Comedy|Horror')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    13,
    'Balto (1995)',
    1995,
    'Adventure|Animation|Children')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    14,
    'Nixon (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    15,
    'Cutthroat Island (1995)',
    1995,
    'Action|Adventure|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    16,
    'Casino (1995)',
    1995,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    17,
    'Sense and Sensibility (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    18,
    'Four Rooms (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    19,
    'Ace Ventura: When Nature Calls (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    20,
    'Money Train (1995)',
    1995,
    'Action|Comedy|Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    21,
    'Get Shorty (1995)',
    1995,
    'Comedy|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    22,
    'Copycat (1995)',
    1995,
    'Crime|Drama|Horror|Mystery|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    23,
    'Assassins (1995)',
    1995,
    'Action|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    24,
    'Powder (1995)',
    1995,
    'Drama|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    25,
    'Leaving Las Vegas (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    26,
    'Othello (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    27,
    'Now and Then (1995)',
    1995,
    'Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    28,
    'Persuasion (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    29,
    'City of Lost Children, The (Cité des enfants perdus, La) (1995)',
    1995,
    'Adventure|Drama|Fantasy|Mystery|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    30,
    'Shanghai Triad (Yao a yao yao dao waipo qiao) (1995)',
    1995,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    31,
    'Dangerous Minds (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    32,
    'Twelve Monkeys (a.k.a. 12 Monkeys) (1995)',
    1995,
    'Mystery|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    34,
    'Babe (1995)',
    1995,
    'Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    36,
    'Dead Man Walking (1995)',
    1995,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    38,
    'It Takes Two (1995)',
    1995,
    'Children|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    39,
    'Clueless (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    40,
    'Cry, the Beloved Country (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    41,
    'Richard III (1995)',
    1995,
    'Drama|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    42,
    'Dead Presidents (1995)',
    1995,
    'Action|Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    43,
    'Restoration (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    44,
    'Mortal Kombat (1995)',
    1995,
    'Action|Adventure|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    45,
    'To Die For (1995)',
    1995,
    'Comedy|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    46,
    'How to Make an American Quilt (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    47,
    'Seven (a.k.a. Se7en) (1995)',
    1995,
    'Mystery|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    48,
    'Pocahontas (1995)',
    1995,
    'Animation|Children|Drama|Musical|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    49,
    'When Night Is Falling (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    50,
    'Usual Suspects, The (1995)',
    1995,
    'Crime|Mystery|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    52,
    'Mighty Aphrodite (1995)',
    1995,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    53,
    'Lamerica (1994)',
    1994,
    'Adventure|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    54,
    'Big Green, The (1995)',
    1995,
    'Children|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    55,
    'Georgia (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    57,
    'Home for the Holidays (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    58,
    'Postman, The (Postino, Il) (1994)',
    1994,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    60,
    'Indian in the Cupboard, The (1995)',
    1995,
    'Adventure|Children|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    61,
    'Eye for an Eye (1996)',
    1996,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    62,
    'Mr. Holland''s Opus (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    63,
    'Don''t Be a Menace to South Central While Drinking Your Juice in the Hood (1996)',
    1996,
    'Comedy|Crime')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    64,
    'Two if by Sea (1996)',
    1996,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    65,
    'Bio-Dome (1996)',
    1996,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    66,
    'Lawnmower Man 2: Beyond Cyberspace (1996)',
    1996,
    'Action|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    68,
    'French Twist (Gazon maudit) (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    69,
    'Friday (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    70,
    'From Dusk Till Dawn (1996)',
    1996,
    'Action|Comedy|Horror|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    71,
    'Fair Game (1995)',
    1995,
    'Action')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    72,
    'Kicking and Screaming (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    73,
    'Misérables, Les (1995)',
    1995,
    'Drama|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    74,
    'Bed of Roses (1996)',
    1996,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    75,
    'Big Bully (1996)',
    1996,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    76,
    'Screamers (1995)',
    1995,
    'Action|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    77,
    'Nico Icon (1995)',
    1995,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    78,
    'Crossing Guard, The (1995)',
    1995,
    'Action|Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    79,
    'Juror, The (1996)',
    1996,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    80,
    'White Balloon, The (Badkonake sefid) (1995)',
    1995,
    'Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    81,
    'Things to Do in Denver When You''re Dead (1995)',
    1995,
    'Crime|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    82,
    'Antonia''s Line (Antonia) (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    83,
    'Once Upon a Time... When We Were Colored (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    85,
    'Angels and Insects (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    86,
    'White Squall (1996)',
    1996,
    'Action|Adventure|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    87,
    'Dunston Checks In (1996)',
    1996,
    'Children|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    88,
    'Black Sheep (1996)',
    1996,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    89,
    'Nick of Time (1995)',
    1995,
    'Action|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    92,
    'Mary Reilly (1996)',
    1996,
    'Drama|Horror|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    93,
    'Vampire in Brooklyn (1995)',
    1995,
    'Comedy|Horror|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    94,
    'Beautiful Girls (1996)',
    1996,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    95,
    'Broken Arrow (1996)',
    1996,
    'Action|Adventure|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    96,
    'In the Bleak Midwinter (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    97,
    'Hate (Haine, La) (1995)',
    1995,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    99,
    'Heidi Fleiss: Hollywood Madam (1995)',
    1995,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    100,
    'City Hall (1996)',
    1996,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    101,
    'Bottle Rocket (1996)',
    1996,
    'Adventure|Comedy|Crime|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    102,
    'Mr. Wrong (1996)',
    1996,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    103,
    'Unforgettable (1996)',
    1996,
    'Mystery|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    104,
    'Happy Gilmore (1996)',
    1996,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    105,
    'Bridges of Madison County, The (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    106,
    'Nobody Loves Me (Keiner liebt mich) (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    107,
    'Muppet Treasure Island (1996)',
    1996,
    'Adventure|Children|Comedy|Musical')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    108,
    'Catwalk (1996)',
    1996,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    110,
    'Braveheart (1995)',
    1995,
    'Action|Drama|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    111,
    'Taxi Driver (1976)',
    1976,
    'Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    112,
    'Rumble in the Bronx (Hont faan kui) (1995)',
    1995,
    'Action|Adventure|Comedy|Crime')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    113,
    'Before and After (1996)',
    1996,
    'Drama|Mystery')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    116,
    'Anne Frank Remembered (1995)',
    1995,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    117,
    'Young Poisoner''s Handbook, The (1995)',
    1995,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    118,
    'If Lucy Fell (1996)',
    1996,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    119,
    'Steal Big, Steal Little (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    121,
    'Boys of St. Vincent, The (1992)',
    1992,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    122,
    'Boomerang (1992)',
    1992,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    123,
    'Chungking Express (Chung Hing sam lam) (1994)',
    1994,
    'Drama|Mystery|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    125,
    'Flirting With Disaster (1996)',
    1996,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    126,
    'NeverEnding Story III, The (1994)',
    1994,
    'Adventure|Children|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    128,
    'Jupiter''s Wife (1994)',
    1994,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    129,
    'Pie in the Sky (1996)',
    1996,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    132,
    'Jade (1995)',
    1995,
    'Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    135,
    'Down Periscope (1996)',
    1996,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    137,
    'Man of the Year (1995)',
    1995,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    140,
    'Up Close and Personal (1996)',
    1996,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    141,
    'Birdcage, The (1996)',
    1996,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    144,
    'Brothers McMullen, The (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    145,
    'Bad Boys (1995)',
    1995,
    'Action|Comedy|Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    146,
    'Amazing Panda Adventure, The (1995)',
    1995,
    'Adventure|Children')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    147,
    'Basketball Diaries, The (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    148,
    'Awfully Big Adventure, An (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    149,
    'Amateur (1994)',
    1994,
    'Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    150,
    'Apollo 13 (1995)',
    1995,
    'Adventure|Drama|IMAX')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    151,
    'Rob Roy (1995)',
    1995,
    'Action|Drama|Romance|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    152,
    'Addiction, The (1995)',
    1995,
    'Drama|Horror')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    153,
    'Batman Forever (1995)',
    1995,
    'Action|Adventure|Comedy|Crime')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    154,
    'Beauty of the Day (Belle de jour) (1967)',
    1967,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    155,
    'Beyond Rangoon (1995)',
    1995,
    'Adventure|Drama|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    156,
    'Blue in the Face (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    157,
    'Canadian Bacon (1995)',
    1995,
    'Comedy|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    158,
    'Casper (1995)',
    1995,
    'Adventure|Children')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    159,
    'Clockers (1995)',
    1995,
    'Crime|Drama|Mystery')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    160,
    'Congo (1995)',
    1995,
    'Action|Adventure|Mystery|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    161,
    'Crimson Tide (1995)',
    1995,
    'Drama|Thriller|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    162,
    'Crumb (1994)',
    1994,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    163,
    'Desperado (1995)',
    1995,
    'Action|Romance|Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    164,
    'Devil in a Blue Dress (1995)',
    1995,
    'Crime|Film-Noir|Mystery|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    165,
    'Die Hard: With a Vengeance (1995)',
    1995,
    'Action|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    166,
    'Doom Generation, The (1995)',
    1995,
    'Comedy|Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    168,
    'First Knight (1995)',
    1995,
    'Action|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    169,
    'Free Willy 2: The Adventure Home (1995)',
    1995,
    'Adventure|Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    170,
    'Hackers (1995)',
    1995,
    'Action|Adventure|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    171,
    'Jeffrey (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    172,
    'Johnny Mnemonic (1995)',
    1995,
    'Action|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    173,
    'Judge Dredd (1995)',
    1995,
    'Action|Crime|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    174,
    'Jury Duty (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    175,
    'Kids (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    176,
    'Living in Oblivion (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    177,
    'Lord of Illusions (1995)',
    1995,
    'Horror')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    178,
    'Love & Human Remains (1993)',
    1993,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    179,
    'Mad Love (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    180,
    'Mallrats (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    181,
    'Mighty Morphin Power Rangers: The Movie (1995)',
    1995,
    'Action|Children')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    183,
    'Mute Witness (1994)',
    1994,
    'Comedy|Horror|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    184,
    'Nadja (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    185,
    'Net, The (1995)',
    1995,
    'Action|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    186,
    'Nine Months (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    187,
    'Party Girl (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    188,
    'Prophecy, The (1995)',
    1995,
    'Fantasy|Horror|Mystery')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    189,
    'Reckless (1995)',
    1995,
    'Comedy|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    190,
    'Safe (1995)',
    1995,
    'Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    191,
    'Scarlet Letter, The (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    193,
    'Showgirls (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    194,
    'Smoke (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    195,
    'Something to Talk About (1995)',
    1995,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    196,
    'Species (1995)',
    1995,
    'Horror|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    198,
    'Strange Days (1995)',
    1995,
    'Action|Crime|Drama|Mystery|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    199,
    'Umbrellas of Cherbourg, The (Parapluies de Cherbourg, Les) (1964)',
    1964,
    'Drama|Musical|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    201,
    'Three Wishes (1995)',
    1995,
    'Drama|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    202,
    'Total Eclipse (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    203,
    'To Wong Foo, Thanks for Everything! Julie Newmar (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    204,
    'Under Siege 2: Dark Territory (1995)',
    1995,
    'Action')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    205,
    'Unstrung Heroes (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    206,
    'Unzipped (1995)',
    1995,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    207,
    'Walk in the Clouds, A (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    208,
    'Waterworld (1995)',
    1995,
    'Action|Adventure|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    209,
    'White Man''s Burden (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    210,
    'Wild Bill (1995)',
    1995,
    'Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    211,
    'Browning Version, The (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    212,
    'Bushwhacked (1995)',
    1995,
    'Adventure|Comedy|Crime|Mystery')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    213,
    'Burnt by the Sun (Utomlyonnye solntsem) (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    214,
    'Before the Rain (Pred dozhdot) (1994)',
    1994,
    'Drama|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    215,
    'Before Sunrise (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    216,
    'Billy Madison (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    217,
    'Babysitter, The (1995)',
    1995,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    218,
    'Boys on the Side (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    219,
    'Cure, The (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    220,
    'Castle Freak (1995)',
    1995,
    'Horror')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    222,
    'Circle of Friends (1995)',
    1995,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    223,
    'Clerks (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    224,
    'Don Juan DeMarco (1995)',
    1995,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    225,
    'Disclosure (1994)',
    1994,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    227,
    'Drop Zone (1994)',
    1994,
    'Action|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    228,
    'Destiny Turns on the Radio (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    229,
    'Death and the Maiden (1994)',
    1994,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    230,
    'Dolores Claiborne (1995)',
    1995,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    231,
    'Dumb & Dumber (Dumb and Dumber) (1994)',
    1994,
    'Adventure|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    232,
    'Eat Drink Man Woman (Yin shi nan nu) (1994)',
    1994,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    233,
    'Exotica (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    234,
    'Exit to Eden (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    235,
    'Ed Wood (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    236,
    'French Kiss (1995)',
    1995,
    'Action|Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    237,
    'Forget Paris (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    238,
    'Far From Home: The Adventures of Yellow Dog (1995)',
    1995,
    'Adventure|Children')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    239,
    'Goofy Movie, A (1995)',
    1995,
    'Animation|Children|Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    240,
    'Hideaway (1995)',
    1995,
    'Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    241,
    'Fluke (1995)',
    1995,
    'Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    242,
    'Farinelli: il castrato (1994)',
    1994,
    'Drama|Musical')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    243,
    'Gordy (1995)',
    1995,
    'Children|Comedy|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    246,
    'Hoop Dreams (1994)',
    1994,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    247,
    'Heavenly Creatures (1994)',
    1994,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    248,
    'Houseguest (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    249,
    'Immortal Beloved (1994)',
    1994,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    250,
    'Heavyweights (Heavy Weights) (1995)',
    1995,
    'Children|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    251,
    'Hunted, The (1995)',
    1995,
    'Action')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    252,
    'I.Q. (1994)',
    1994,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    253,
    'Interview with the Vampire: The Vampire Chronicles (1994)',
    1994,
    'Drama|Horror')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    254,
    'Jefferson in Paris (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    255,
    'Jerky Boys, The (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    256,
    'Junior (1994)',
    1994,
    'Comedy|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    257,
    'Just Cause (1995)',
    1995,
    'Mystery|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    258,
    'Kid in King Arthur''s Court, A (1995)',
    1995,
    'Adventure|Children|Comedy|Fantasy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    259,
    'Kiss of Death (1995)',
    1995,
    'Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    260,
    'Star Wars: Episode IV - A New Hope (1977)',
    1977,
    'Action|Adventure|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    261,
    'Little Women (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    262,
    'Little Princess, A (1995)',
    1995,
    'Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    263,
    'Ladybird Ladybird (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    265,
    'Like Water for Chocolate (Como agua para chocolate) (1992)',
    1992,
    'Drama|Fantasy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    266,
    'Legends of the Fall (1994)',
    1994,
    'Drama|Romance|War|Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    267,
    'Major Payne (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    269,
    'My Crazy Life (Mi vida loca) (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    270,
    'Love Affair (1994)',
    1994,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    271,
    'Losing Isaiah (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    272,
    'Madness of King George, The (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    273,
    'Mary Shelley''s Frankenstein (Frankenstein) (1994)',
    1994,
    'Drama|Horror|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    274,
    'Man of the House (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    275,
    'Mixed Nuts (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    276,
    'Milk Money (1994)',
    1994,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    277,
    'Miracle on 34th Street (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    278,
    'Miami Rhapsody (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    279,
    'My Family (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    280,
    'Murder in the First (1995)',
    1995,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    281,
    'Nobody''s Fool (1994)',
    1994,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    282,
    'Nell (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    283,
    'New Jersey Drive (1995)',
    1995,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    284,
    'New York Cop (Nyû Yôku no koppu) (1993)',
    1993,
    'Action|Crime')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    285,
    'Beyond Bedlam (1993)',
    1993,
    'Drama|Horror')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    287,
    'Nina Takes a Lover (1994)',
    1994,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    288,
    'Natural Born Killers (1994)',
    1994,
    'Action|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    289,
    'Only You (1994)',
    1994,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    290,
    'Once Were Warriors (1994)',
    1994,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    291,
    'Poison Ivy II (1996)',
    1996,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    292,
    'Outbreak (1995)',
    1995,
    'Action|Drama|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    293,
    'Léon: The Professional (a.k.a. The Professional) (Léon) (1994)',
    1994,
    'Action|Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    294,
    'Perez Family, The (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    295,
    'Pyromaniac''s Love Story, A (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    296,
    'Pulp Fiction (1994)',
    1994,
    'Comedy|Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    298,
    'Pushing Hands (Tui shou) (1992)',
    1992,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    299,
    'Priest (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    300,
    'Quiz Show (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    301,
    'Picture Bride (Bijo photo) (1994)',
    1994,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    302,
    'Queen Margot (Reine Margot, La) (1994)',
    1994,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    303,
    'Quick and the Dead, The (1995)',
    1995,
    'Action|Thriller|Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    304,
    'Roommates (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    305,
    'Ready to Wear (Pret-A-Porter) (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    306,
    'Three Colors: Red (Trois couleurs: Rouge) (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    307,
    'Three Colors: Blue (Trois couleurs: Bleu) (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    308,
    'Three Colors: White (Trzy kolory: Bialy) (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    310,
    'Rent-a-Kid (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    311,
    'Relative Fear (1994)',
    1994,
    'Horror|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    312,
    'Stuart Saves His Family (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    313,
    'Swan Princess, The (1994)',
    1994,
    'Animation|Children')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    314,
    'Secret of Roan Inish, The (1994)',
    1994,
    'Children|Drama|Fantasy|Mystery')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    315,
    'Specialist, The (1994)',
    1994,
    'Action|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    316,
    'Stargate (1994)',
    1994,
    'Action|Adventure|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    317,
    'Santa Clause, The (1994)',
    1994,
    'Comedy|Drama|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    318,
    'Shawshank Redemption, The (1994)',
    1994,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    319,
    'Shallow Grave (1994)',
    1994,
    'Comedy|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    320,
    'Suture (1993)',
    1993,
    'Film-Noir|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    321,
    'Strawberry and Chocolate (Fresa y chocolate) (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    322,
    'Swimming with Sharks (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    324,
    'Sum of Us, The (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    325,
    'National Lampoon''s Senior Trip (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    326,
    'To Live (Huozhe) (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    327,
    'Tank Girl (1995)',
    1995,
    'Action|Comedy|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    328,
    'Tales from the Crypt Presents: Demon Knight (1995)',
    1995,
    'Horror|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    329,
    'Star Trek: Generations (1994)',
    1994,
    'Adventure|Drama|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    330,
    'Tales from the Hood (1995)',
    1995,
    'Action|Crime|Horror')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    331,
    'Tom & Viv (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    332,
    'Village of the Damned (1995)',
    1995,
    'Horror|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    333,
    'Tommy Boy (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    334,
    'Vanya on 42nd Street (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    335,
    'Underneath (1995)',
    1995,
    'Mystery|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    336,
    'Walking Dead, The (1995)',
    1995,
    'Drama|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    337,
    'What''s Eating Gilbert Grape (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    338,
    'Virtuosity (1995)',
    1995,
    'Action|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    339,
    'While You Were Sleeping (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    340,
    'War, The (1994)',
    1994,
    'Adventure|Drama|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    341,
    'Double Happiness (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    342,
    'Muriel''s Wedding (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    343,
    'Baby-Sitters Club, The (1995)',
    1995,
    'Children')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    344,
    'Ace Ventura: Pet Detective (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    345,
    'Adventures of Priscilla, Queen of the Desert, The (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    346,
    'Backbeat (1993)',
    1993,
    'Drama|Musical')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    347,
    'Bitter Moon (1992)',
    1992,
    'Drama|Film-Noir|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    348,
    'Bullets Over Broadway (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    349,
    'Clear and Present Danger (1994)',
    1994,
    'Action|Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    350,
    'Client, The (1994)',
    1994,
    'Drama|Mystery|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    351,
    'Corrina, Corrina (1994)',
    1994,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    352,
    'Crooklyn (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    353,
    'Crow, The (1994)',
    1994,
    'Action|Crime|Fantasy|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    354,
    'Cobb (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    355,
    'Flintstones, The (1994)',
    1994,
    'Children|Comedy|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    356,
    'Forrest Gump (1994)',
    1994,
    'Comedy|Drama|Romance|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    357,
    'Four Weddings and a Funeral (1994)',
    1994,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    358,
    'Higher Learning (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    359,
    'I Like It Like That (1994)',
    1994,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    360,
    'I Love Trouble (1994)',
    1994,
    'Action|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    361,
    'It Could Happen to You (1994)',
    1994,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    362,
    'Jungle Book, The (1994)',
    1994,
    'Adventure|Children|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    363,
    'Wonderful, Horrible Life of Leni Riefenstahl, The (Macht der Bilder: Leni Riefenstahl, Die) (1993)',
    1993,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    364,
    'Lion King, The (1994)',
    1994,
    'Adventure|Animation|Children|Drama|Musical|IMAX')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    365,
    'Little Buddha (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    366,
    'Wes Craven''s New Nightmare (Nightmare on Elm Street Part 7: Freddy''s Finale, A) (1994)',
    1994,
    'Drama|Horror|Mystery|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    367,
    'Mask, The (1994)',
    1994,
    'Action|Comedy|Crime|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    368,
    'Maverick (1994)',
    1994,
    'Adventure|Comedy|Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    369,
    'Mrs. Parker and the Vicious Circle (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    370,
    'Naked Gun 33 1/3: The Final Insult (1994)',
    1994,
    'Action|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    371,
    'Paper, The (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    372,
    'Reality Bites (1994)',
    1994,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    373,
    'Red Rock West (1992)',
    1992,
    'Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    374,
    'Richie Rich (1994)',
    1994,
    'Children|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    376,
    'River Wild, The (1994)',
    1994,
    'Action|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    377,
    'Speed (1994)',
    1994,
    'Action|Romance|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    378,
    'Speechless (1994)',
    1994,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    379,
    'Timecop (1994)',
    1994,
    'Action|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    380,
    'True Lies (1994)',
    1994,
    'Action|Adventure|Comedy|Romance|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    381,
    'When a Man Loves a Woman (1994)',
    1994,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    382,
    'Wolf (1994)',
    1994,
    'Drama|Horror|Romance|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    383,
    'Wyatt Earp (1994)',
    1994,
    'Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    384,
    'Bad Company (1995)',
    1995,
    'Action|Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    385,
    'Man of No Importance, A (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    386,
    'S.F.W. (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    387,
    'Low Down Dirty Shame, A (1994)',
    1994,
    'Action|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    388,
    'Boys Life (1995)',
    1995,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    389,
    'Colonel Chabert, Le (1994)',
    1994,
    'Drama|Romance|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    390,
    'Faster Pussycat! Kill! Kill! (1965)',
    1965,
    'Action|Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    391,
    'Jason''s Lyric (1994)',
    1994,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    393,
    'Street Fighter (1994)',
    1994,
    'Action|Adventure|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    405,
    'Highlander III: The Sorcerer (a.k.a. Highlander: The Final Dimension) (1994)',
    1994,
    'Action|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    406,
    'Federal Hill (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    407,
    'In the Mouth of Madness (1995)',
    1995,
    'Horror|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    408,
    '8 Seconds (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    409,
    'Above the Rim (1994)',
    1994,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    410,
    'Addams Family Values (1993)',
    1993,
    'Children|Comedy|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    412,
    'Age of Innocence, The (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    413,
    'Airheads (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    414,
    'Air Up There, The (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    415,
    'Another Stakeout (1993)',
    1993,
    'Comedy|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    416,
    'Bad Girls (1994)',
    1994,
    'Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    417,
    'Barcelona (1994)',
    1994,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    418,
    'Being Human (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    419,
    'Beverly Hillbillies, The (1993)',
    1993,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    420,
    'Beverly Hills Cop III (1994)',
    1994,
    'Action|Comedy|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    421,
    'Black Beauty (1994)',
    1994,
    'Adventure|Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    422,
    'Blink (1994)',
    1994,
    'Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    423,
    'Blown Away (1994)',
    1994,
    'Action|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    424,
    'Blue Chips (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    425,
    'Blue Sky (1994)',
    1994,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    426,
    'Body Snatchers (1993)',
    1993,
    'Horror|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    427,
    'Boxing Helena (1993)',
    1993,
    'Drama|Mystery|Romance|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    428,
    'Bronx Tale, A (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    429,
    'Cabin Boy (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    430,
    'Calendar Girl (1993)',
    1993,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    431,
    'Carlito''s Way (1993)',
    1993,
    'Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    432,
    'City Slickers II: The Legend of Curly''s Gold (1994)',
    1994,
    'Adventure|Comedy|Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    433,
    'Clean Slate (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    434,
    'Cliffhanger (1993)',
    1993,
    'Action|Adventure|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    435,
    'Coneheads (1993)',
    1993,
    'Comedy|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    436,
    'Color of Night (1994)',
    1994,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    437,
    'Cops and Robbersons (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    438,
    'Cowboy Way, The (1994)',
    1994,
    'Action|Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    440,
    'Dave (1993)',
    1993,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    441,
    'Dazed and Confused (1993)',
    1993,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    442,
    'Demolition Man (1993)',
    1993,
    'Action|Adventure|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    444,
    'Even Cowgirls Get the Blues (1993)',
    1993,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    445,
    'Fatal Instinct (1993)',
    1993,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    446,
    'Farewell My Concubine (Ba wang bie ji) (1993)',
    1993,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    448,
    'Fearless (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    449,
    'Fear of a Black Hat (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    450,
    'With Honors (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    451,
    'Flesh and Bone (1993)',
    1993,
    'Drama|Mystery|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    452,
    'Widows'' Peak (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    453,
    'For Love or Money (1993)',
    1993,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    454,
    'Firm, The (1993)',
    1993,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    455,
    'Free Willy (1993)',
    1993,
    'Adventure|Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    456,
    'Fresh (1994)',
    1994,
    'Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    457,
    'Fugitive, The (1993)',
    1993,
    'Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    458,
    'Geronimo: An American Legend (1993)',
    1993,
    'Drama|Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    459,
    'Getaway, The (1994)',
    1994,
    'Action|Adventure|Crime|Drama|Romance|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    460,
    'Getting Even with Dad (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    461,
    'Go Fish (1994)',
    1994,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    464,
    'Hard Target (1993)',
    1993,
    'Action|Adventure|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    466,
    'Hot Shots! Part Deux (1993)',
    1993,
    'Action|Comedy|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    467,
    'Live Nude Girls (1995)',
    1995,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    468,
    'Englishman Who Went Up a Hill But Came Down a Mountain, The (1995)',
    1995,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    469,
    'House of the Spirits, The (1993)',
    1993,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    470,
    'House Party 3 (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    471,
    'Hudsucker Proxy, The (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    472,
    'I''ll Do Anything (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    473,
    'In the Army Now (1994)',
    1994,
    'Comedy|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    474,
    'In the Line of Fire (1993)',
    1993,
    'Action|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    475,
    'In the Name of the Father (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    476,
    'Inkwell, The (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    477,
    'What''s Love Got to Do with It? (1993)',
    1993,
    'Drama|Musical')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    478,
    'Jimmy Hollywood (1994)',
    1994,
    'Comedy|Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    479,
    'Judgment Night (1993)',
    1993,
    'Action|Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    480,
    'Jurassic Park (1993)',
    1993,
    'Action|Adventure|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    481,
    'Kalifornia (1993)',
    1993,
    'Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    482,
    'Killing Zoe (1994)',
    1994,
    'Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    484,
    'Lassie (1994)',
    1994,
    'Adventure|Children')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    485,
    'Last Action Hero (1993)',
    1993,
    'Action|Adventure|Comedy|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    486,
    'Life with Mikey (1993)',
    1993,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    487,
    'Lightning Jack (1994)',
    1994,
    'Comedy|Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    488,
    'M. Butterfly (1993)',
    1993,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    489,
    'Made in America (1993)',
    1993,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    490,
    'Malice (1993)',
    1993,
    'Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    491,
    'Man Without a Face, The (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    492,
    'Manhattan Murder Mystery (1993)',
    1993,
    'Comedy|Mystery')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    493,
    'Menace II Society (1993)',
    1993,
    'Action|Crime|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    494,
    'Executive Decision (1996)',
    1996,
    'Action|Adventure|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    495,
    'In the Realm of the Senses (Ai no corrida) (1976)',
    1976,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    496,
    'What Happened Was... (1994)',
    1994,
    'Comedy|Drama|Romance|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    497,
    'Much Ado About Nothing (1993)',
    1993,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    499,
    'Mr. Wonderful (1993)',
    1993,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    500,
    'Mrs. Doubtfire (1993)',
    1993,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    501,
    'Naked (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    502,
    'Next Karate Kid, The (1994)',
    1994,
    'Action|Children|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    504,
    'No Escape (1994)',
    1994,
    'Action|Drama|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    505,
    'North (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    506,
    'Orlando (1992)',
    1992,
    'Drama|Fantasy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    507,
    'Perfect World, A (1993)',
    1993,
    'Crime|Drama|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    508,
    'Philadelphia (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    509,
    'Piano, The (1993)',
    1993,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    510,
    'Poetic Justice (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    511,
    'Program, The (1993)',
    1993,
    'Action|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    512,
    'Puppet Masters, The (1994)',
    1994,
    'Horror|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    513,
    'Radioland Murders (1994)',
    1994,
    'Comedy|Mystery|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    514,
    'Ref, The (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    515,
    'Remains of the Day, The (1993)',
    1993,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    516,
    'Renaissance Man (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    517,
    'Rising Sun (1993)',
    1993,
    'Action|Drama|Mystery')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    518,
    'Road to Wellville, The (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    519,
    'RoboCop 3 (1993)',
    1993,
    'Action|Crime|Drama|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    520,
    'Robin Hood: Men in Tights (1993)',
    1993,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    521,
    'Romeo Is Bleeding (1993)',
    1993,
    'Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    522,
    'Romper Stomper (1992)',
    1992,
    'Action|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    523,
    'Ruby in Paradise (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    524,
    'Rudy (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    526,
    'Savage Nights (Nuits fauves, Les) (1992)',
    1992,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    527,
    'Schindler''s List (1993)',
    1993,
    'Drama|War')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    528,
    'Scout, The (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    529,
    'Searching for Bobby Fischer (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    531,
    'Secret Garden, The (1993)',
    1993,
    'Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    532,
    'Serial Mom (1994)',
    1994,
    'Comedy|Crime|Horror')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    533,
    'Shadow, The (1994)',
    1994,
    'Action|Adventure|Fantasy|Mystery')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    534,
    'Shadowlands (1993)',
    1993,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    535,
    'Short Cuts (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    536,
    'Simple Twist of Fate, A (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    537,
    'Sirens (1994)',
    1994,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    538,
    'Six Degrees of Separation (1993)',
    1993,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    539,
    'Sleepless in Seattle (1993)',
    1993,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    540,
    'Sliver (1993)',
    1993,
    'Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    541,
    'Blade Runner (1982)',
    1982,
    'Action|Sci-Fi|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    542,
    'Son in Law (1993)',
    1993,
    'Comedy|Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    543,
    'So I Married an Axe Murderer (1993)',
    1993,
    'Comedy|Romance|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    544,
    'Striking Distance (1993)',
    1993,
    'Action|Crime')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    546,
    'Super Mario Bros. (1993)',
    1993,
    'Action|Adventure|Children|Comedy|Fantasy|Sci-Fi')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    547,
    'Surviving the Game (1994)',
    1994,
    'Action|Adventure|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    548,
    'Terminal Velocity (1994)',
    1994,
    'Action|Mystery|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    549,
    'Thirty-Two Short Films About Glenn Gould (1993)',
    1993,
    'Drama|Musical')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    550,
    'Threesome (1994)',
    1994,
    'Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    551,
    'Nightmare Before Christmas, The (1993)',
    1993,
    'Animation|Children|Fantasy|Musical')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    552,
    'Three Musketeers, The (1993)',
    1993,
    'Action|Adventure|Comedy|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    553,
    'Tombstone (1993)',
    1993,
    'Action|Drama|Western')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    555,
    'True Romance (1993)',
    1993,
    'Crime|Thriller')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    556,
    'War Room, The (1993)',
    1993,
    'Documentary')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    558,
    'Pagemaster, The (1994)',
    1994,
    'Action|Adventure|Animation|Children|Fantasy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    562,
    'Welcome to the Dollhouse (1995)',
    1995,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    563,
    'Germinal (1993)',
    1993,
    'Drama|Romance')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    564,
    'Chasers (1994)',
    1994,
    'Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    567,
    'Kika (1993)',
    1993,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    568,
    'Bhaji on the Beach (1993)',
    1993,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    569,
    'Little Big League (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    573,
    'Ciao, Professore! (Io speriamo che me la cavo) (1992)',
    1992,
    'Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    574,
    'Spanking the Monkey (1994)',
    1994,
    'Comedy|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    575,
    'Little Rascals, The (1994)',
    1994,
    'Children|Comedy')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    577,
    'Andre (1994)',
    1994,
    'Adventure|Children|Drama')
;
INSERT INTO movies (id, title, year, genres) VALUES (
    579,
    'Escort, The (Scorta, La) (1993)',
    1993,
    'Crime|Thriller')
;

-- Ratings
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1,
    4.0,
    964982703)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3,
    4.0,
    964981247)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    6,
    4.0,
    964982224)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    47,
    5.0,
    964983815)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    50,
    5.0,
    964982931)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    70,
    3.0,
    964982400)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    101,
    5.0,
    964980868)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    110,
    4.0,
    964982176)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    151,
    5.0,
    964984041)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    157,
    5.0,
    964984100)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    163,
    5.0,
    964983650)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    216,
    5.0,
    964981208)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    223,
    3.0,
    964980985)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    231,
    5.0,
    964981179)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    235,
    4.0,
    964980908)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    260,
    5.0,
    964981680)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    296,
    3.0,
    964982967)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    316,
    3.0,
    964982310)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    333,
    5.0,
    964981179)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    349,
    4.0,
    964982563)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    356,
    4.0,
    964980962)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    362,
    5.0,
    964982588)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    367,
    4.0,
    964981710)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    423,
    3.0,
    964982363)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    441,
    4.0,
    964980868)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    457,
    5.0,
    964981909)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    480,
    4.0,
    964982346)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    500,
    3.0,
    964981208)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    527,
    5.0,
    964984002)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    543,
    4.0,
    964981179)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    552,
    4.0,
    964982653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    553,
    5.0,
    964984153)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    590,
    4.0,
    964982546)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    592,
    4.0,
    964982271)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    593,
    4.0,
    964983793)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    596,
    5.0,
    964982838)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    608,
    5.0,
    964982931)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    648,
    3.0,
    964982563)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    661,
    5.0,
    964982838)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    673,
    3.0,
    964981775)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    733,
    4.0,
    964982400)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    736,
    3.0,
    964982653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    780,
    3.0,
    964984086)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    804,
    4.0,
    964980499)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    919,
    5.0,
    964982475)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    923,
    5.0,
    964981529)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    940,
    5.0,
    964982176)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    943,
    4.0,
    964983614)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    954,
    5.0,
    964983219)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1009,
    3.0,
    964981775)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1023,
    5.0,
    964982681)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1024,
    5.0,
    964982876)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1025,
    5.0,
    964982791)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1029,
    5.0,
    964982855)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1030,
    3.0,
    964982903)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1031,
    5.0,
    964982653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1032,
    5.0,
    964982791)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1042,
    4.0,
    964981179)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1049,
    5.0,
    964982400)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1060,
    4.0,
    964980924)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1073,
    5.0,
    964981680)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1080,
    5.0,
    964981327)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1089,
    5.0,
    964982951)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1090,
    4.0,
    964984018)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1092,
    5.0,
    964983484)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1097,
    5.0,
    964981680)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1127,
    4.0,
    964982513)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1136,
    5.0,
    964981327)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1196,
    5.0,
    964981827)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1197,
    5.0,
    964981872)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1198,
    5.0,
    964981827)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1206,
    5.0,
    964983737)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1208,
    4.0,
    964983250)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1210,
    5.0,
    964980499)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1213,
    5.0,
    964982951)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1214,
    4.0,
    964981855)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1219,
    2.0,
    964983393)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1220,
    5.0,
    964981909)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1222,
    5.0,
    964981909)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1224,
    5.0,
    964984018)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1226,
    5.0,
    964983618)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1240,
    5.0,
    964983723)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1256,
    5.0,
    964981442)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1258,
    3.0,
    964983414)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1265,
    4.0,
    964983599)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1270,
    5.0,
    964983705)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1275,
    5.0,
    964982290)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1278,
    5.0,
    964983414)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1282,
    5.0,
    964982703)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1291,
    5.0,
    964981909)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1298,
    5.0,
    964984086)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1348,
    4.0,
    964983393)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1377,
    3.0,
    964982653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1396,
    3.0,
    964983017)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1408,
    3.0,
    964982310)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1445,
    3.0,
    964984112)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1473,
    4.0,
    964980875)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1500,
    4.0,
    964980985)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1517,
    5.0,
    964981107)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1552,
    4.0,
    964982620)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1573,
    5.0,
    964982290)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1580,
    3.0,
    964981125)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1587,
    5.0,
    964982346)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1617,
    5.0,
    964982951)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1620,
    4.0,
    964983056)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1625,
    5.0,
    964983504)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1644,
    3.0,
    964983536)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1676,
    3.0,
    964982620)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1732,
    5.0,
    964981125)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1777,
    4.0,
    964981230)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1793,
    4.0,
    964981404)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1804,
    5.0,
    964983034)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1805,
    4.0,
    964983056)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1920,
    4.0,
    964981780)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1927,
    5.0,
    964981497)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1954,
    5.0,
    964982176)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    1967,
    4.0,
    964981710)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2000,
    4.0,
    964982211)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2005,
    5.0,
    964981710)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2012,
    4.0,
    964984176)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2018,
    5.0,
    964980523)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2028,
    4.0,
    964981888)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2033,
    5.0,
    964982903)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2046,
    4.0,
    964982563)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2048,
    5.0,
    964982791)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2054,
    4.0,
    964981747)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2058,
    5.0,
    964982400)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2078,
    5.0,
    964982838)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2090,
    5.0,
    964982838)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2093,
    3.0,
    964981710)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2094,
    5.0,
    964982653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2096,
    4.0,
    964982838)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2099,
    4.0,
    964982588)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2105,
    4.0,
    964981725)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2115,
    5.0,
    964982529)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2116,
    5.0,
    964982876)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2137,
    5.0,
    964982791)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2139,
    5.0,
    964982791)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2141,
    5.0,
    964982838)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2143,
    4.0,
    964981725)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2161,
    5.0,
    964981710)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2174,
    4.0,
    964981680)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2193,
    4.0,
    964981710)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2253,
    2.0,
    964981775)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2268,
    4.0,
    964982989)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2273,
    4.0,
    964982310)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2291,
    5.0,
    964983664)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2329,
    5.0,
    964983263)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2338,
    2.0,
    964983546)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2353,
    5.0,
    964983861)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2366,
    4.0,
    964982462)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2387,
    5.0,
    964983123)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2389,
    2.0,
    964983094)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2395,
    5.0,
    964981093)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2406,
    4.0,
    964982310)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2414,
    3.0,
    964982513)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2427,
    5.0,
    964982242)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2450,
    4.0,
    964982620)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2459,
    5.0,
    964983414)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2470,
    5.0,
    964982588)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2478,
    4.0,
    964984169)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2492,
    4.0,
    965719662)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2502,
    5.0,
    964981278)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2528,
    3.0,
    964982328)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2529,
    5.0,
    964982242)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2542,
    5.0,
    964981265)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2571,
    5.0,
    964981888)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2580,
    5.0,
    964983000)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2596,
    5.0,
    964981144)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2616,
    4.0,
    964983080)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2617,
    2.0,
    964982588)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2628,
    4.0,
    964980523)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2640,
    4.0,
    964982377)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2641,
    5.0,
    964982620)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2644,
    4.0,
    964983393)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2648,
    4.0,
    964983414)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2654,
    5.0,
    964983393)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2657,
    3.0,
    964983426)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2692,
    5.0,
    964981855)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2700,
    5.0,
    964980985)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2716,
    5.0,
    964983414)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2761,
    5.0,
    964982703)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2797,
    4.0,
    964981710)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2826,
    4.0,
    964980523)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2858,
    5.0,
    964980868)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2872,
    5.0,
    964981680)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2899,
    5.0,
    964982703)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2916,
    4.0,
    964982290)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2944,
    5.0,
    964981872)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2947,
    5.0,
    964982176)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2948,
    5.0,
    964982191)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2949,
    5.0,
    964981888)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2959,
    5.0,
    964983282)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2985,
    4.0,
    964983034)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2987,
    5.0,
    964982495)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2991,
    5.0,
    964982271)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2993,
    5.0,
    964982242)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    2997,
    4.0,
    964980896)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3033,
    5.0,
    964983762)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3034,
    5.0,
    964982791)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3052,
    5.0,
    964981208)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3053,
    5.0,
    964984086)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3062,
    4.0,
    964981872)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3147,
    5.0,
    964983873)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3168,
    4.0,
    964982495)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3176,
    1.0,
    964983504)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3243,
    3.0,
    964981093)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3247,
    3.0,
    964983108)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3253,
    5.0,
    964981107)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3273,
    5.0,
    964983536)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3386,
    5.0,
    964983484)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3439,
    4.0,
    964981799)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3440,
    4.0,
    964981799)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3441,
    5.0,
    964982328)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3448,
    5.0,
    964984054)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3450,
    5.0,
    964981144)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3479,
    4.0,
    964981725)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3489,
    4.0,
    964981775)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3527,
    4.0,
    964982271)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3578,
    5.0,
    964980668)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3617,
    4.0,
    964980683)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3639,
    4.0,
    964982271)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3671,
    5.0,
    964981589)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3702,
    5.0,
    964983737)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3703,
    5.0,
    964981909)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3729,
    5.0,
    964982363)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3740,
    4.0,
    964982417)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3744,
    4.0,
    964980694)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3793,
    5.0,
    964981855)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    3809,
    4.0,
    964981220)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    4006,
    4.0,
    964982903)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    1,
    5060,
    5.0,
    964984002)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    318,
    3.0,
    1445714835)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    333,
    4.0,
    1445715029)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    1704,
    4.5,
    1445715228)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    3578,
    4.0,
    1445714885)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    6874,
    4.0,
    1445714952)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    8798,
    3.5,
    1445714960)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    46970,
    4.0,
    1445715013)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    48516,
    4.0,
    1445715064)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    58559,
    4.5,
    1445715141)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    60756,
    5.0,
    1445714980)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    68157,
    4.5,
    1445715154)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    71535,
    3.0,
    1445714974)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    74458,
    4.0,
    1445714926)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    77455,
    3.0,
    1445714941)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    79132,
    4.0,
    1445714841)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    80489,
    4.5,
    1445715340)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    80906,
    5.0,
    1445715172)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    86345,
    4.0,
    1445715166)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    89774,
    5.0,
    1445715189)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    91529,
    3.5,
    1445714891)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    91658,
    2.5,
    1445714938)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    99114,
    3.5,
    1445714874)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    106782,
    5.0,
    1445714966)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    109487,
    3.0,
    1445715145)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    112552,
    4.0,
    1445714882)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    114060,
    2.0,
    1445715276)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    115713,
    3.5,
    1445714854)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    122882,
    5.0,
    1445715272)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    2,
    131724,
    5.0,
    1445714851)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    31,
    0.5,
    1306463578)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    527,
    0.5,
    1306464275)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    647,
    0.5,
    1306463619)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    688,
    0.5,
    1306464228)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    720,
    0.5,
    1306463595)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    849,
    5.0,
    1306463611)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    914,
    0.5,
    1306463567)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    1093,
    0.5,
    1306463627)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    1124,
    0.5,
    1306464216)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    1263,
    0.5,
    1306463569)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    1272,
    0.5,
    1306463624)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    1275,
    3.5,
    1306463323)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    1302,
    0.5,
    1306464189)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    1371,
    3.0,
    1306463561)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    1587,
    4.5,
    1306464003)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    2018,
    0.5,
    1306464175)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    2080,
    0.5,
    1306463572)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    2090,
    0.5,
    1306464261)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    2105,
    2.0,
    1306463559)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    2288,
    4.0,
    1306463631)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    2424,
    0.5,
    1306464293)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    2851,
    5.0,
    1306463925)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    3024,
    4.5,
    1306464054)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    3210,
    0.5,
    1306463638)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    3703,
    5.0,
    1306463603)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    3949,
    0.5,
    1306464245)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    4518,
    5.0,
    1306463770)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    5048,
    0.5,
    1306464284)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    5181,
    5.0,
    1306463718)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    5746,
    5.0,
    1306463708)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    5764,
    4.5,
    1306464021)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    5919,
    5.0,
    1306463825)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    6238,
    0.5,
    1306464204)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    6835,
    5.0,
    1306463670)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    7899,
    4.5,
    1306464036)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    7991,
    5.0,
    1306463684)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    26409,
    4.5,
    1306463993)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    70946,
    5.0,
    1306463815)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    3,
    72378,
    0.5,
    1306464164)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    21,
    3.0,
    986935199)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    32,
    2.0,
    945173447)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    45,
    3.0,
    986935047)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    47,
    2.0,
    945173425)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    52,
    3.0,
    964622786)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    58,
    3.0,
    964538444)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    106,
    4.0,
    986848784)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    125,
    5.0,
    964622758)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    126,
    1.0,
    986848920)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    162,
    5.0,
    945078571)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    171,
    3.0,
    945078428)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    176,
    5.0,
    964622565)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    190,
    2.0,
    945079259)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    215,
    5.0,
    945079078)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    222,
    1.0,
    945629040)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    232,
    5.0,
    964622684)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    235,
    2.0,
    945173513)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    247,
    3.0,
    986848894)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    260,
    5.0,
    945079259)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    265,
    5.0,
    964538468)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    296,
    1.0,
    945173350)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    319,
    5.0,
    945079182)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    342,
    5.0,
    964538500)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    345,
    4.0,
    945629063)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    348,
    4.0,
    964622786)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    351,
    3.0,
    986934901)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    357,
    3.0,
    964623306)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    368,
    4.0,
    945078690)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    417,
    2.0,
    945078467)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    441,
    1.0,
    986934915)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    450,
    2.0,
    986848828)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    457,
    5.0,
    945079259)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    475,
    5.0,
    945174290)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    492,
    5.0,
    945079872)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    509,
    1.0,
    945079106)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    538,
    5.0,
    945078636)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    539,
    1.0,
    964538832)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    553,
    2.0,
    945079301)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    588,
    4.0,
    945079670)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    593,
    5.0,
    964539986)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    595,
    3.0,
    986848609)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    599,
    2.0,
    945078587)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    608,
    5.0,
    964540008)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    648,
    3.0,
    945079906)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    708,
    4.0,
    986935230)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    759,
    3.0,
    945078601)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    800,
    4.0,
    945079106)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    892,
    4.0,
    964622714)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    898,
    5.0,
    964623347)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    899,
    4.0,
    945079653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    902,
    4.0,
    945078446)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    904,
    4.0,
    945079837)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    908,
    5.0,
    945173902)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    910,
    5.0,
    945173989)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    912,
    5.0,
    945173902)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    914,
    5.0,
    945079670)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    919,
    5.0,
    945079521)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    920,
    5.0,
    945173602)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    930,
    5.0,
    964538571)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    937,
    3.0,
    986849085)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1025,
    4.0,
    945079232)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1046,
    5.0,
    945173654)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1057,
    3.0,
    964540578)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1060,
    2.0,
    986934819)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1073,
    4.0,
    945079483)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1077,
    5.0,
    945173692)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1079,
    2.0,
    945078946)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1080,
    5.0,
    986934696)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1084,
    5.0,
    945079259)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1086,
    5.0,
    964539723)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1094,
    3.0,
    964538500)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1103,
    5.0,
    964539723)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1136,
    5.0,
    986934625)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1179,
    4.0,
    964539180)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1183,
    1.0,
    964778513)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1188,
    5.0,
    964538500)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1196,
    5.0,
    964538763)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1197,
    5.0,
    964538763)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1198,
    3.0,
    964538728)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1199,
    2.0,
    945078967)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1203,
    5.0,
    945174025)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1211,
    1.0,
    964539205)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1213,
    4.0,
    945079729)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1219,
    4.0,
    964539961)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1225,
    4.0,
    964539326)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1250,
    5.0,
    945174008)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1259,
    4.0,
    964538728)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1265,
    4.0,
    964622684)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1266,
    4.0,
    986849037)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1279,
    2.0,
    986934832)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1282,
    5.0,
    945079653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1283,
    5.0,
    945078690)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1288,
    4.0,
    945079653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1291,
    4.0,
    964538763)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1304,
    3.0,
    945078467)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1391,
    1.0,
    945173766)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1449,
    5.0,
    945079767)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1466,
    4.0,
    945173492)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1500,
    4.0,
    964622830)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1517,
    4.0,
    945079790)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1580,
    3.0,
    986935244)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1597,
    1.0,
    945079906)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1617,
    2.0,
    945079837)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1641,
    4.0,
    964622758)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1704,
    1.0,
    945629015)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1719,
    4.0,
    945079956)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1732,
    4.0,
    945079889)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1733,
    5.0,
    945079143)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1734,
    3.0,
    964539357)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1834,
    5.0,
    945174134)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1860,
    2.0,
    986849001)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1883,
    4.0,
    964622642)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1885,
    3.0,
    964622617)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1892,
    2.0,
    964539431)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1895,
    4.0,
    945629179)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1907,
    3.0,
    964540505)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1914,
    4.0,
    964622714)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1916,
    1.0,
    986934786)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1923,
    3.0,
    986934870)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1947,
    5.0,
    945079653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1966,
    2.0,
    964622684)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1967,
    5.0,
    945078967)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    1968,
    4.0,
    986934786)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2019,
    2.0,
    945078690)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2076,
    4.0,
    945079052)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2078,
    5.0,
    945079521)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2109,
    4.0,
    986935016)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2145,
    3.0,
    986935328)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2150,
    5.0,
    986934738)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2174,
    5.0,
    964539855)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2186,
    5.0,
    945174008)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2203,
    4.0,
    945079729)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2204,
    5.0,
    964540008)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2282,
    1.0,
    945629238)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2324,
    1.0,
    964622590)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2336,
    2.0,
    964538964)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2351,
    4.0,
    945078467)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2359,
    4.0,
    964622590)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2390,
    5.0,
    945079164)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2395,
    3.0,
    964623306)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2406,
    4.0,
    986935302)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2467,
    4.0,
    945079858)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2571,
    1.0,
    945173385)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2583,
    5.0,
    945078863)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2599,
    5.0,
    964622684)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2628,
    1.0,
    986848894)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2683,
    4.0,
    945079790)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2692,
    5.0,
    945079013)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2712,
    2.0,
    945078542)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2762,
    4.0,
    964539986)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2763,
    1.0,
    964778621)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2770,
    2.0,
    945173553)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2791,
    5.0,
    964539628)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2843,
    5.0,
    945078814)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2858,
    5.0,
    964539140)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2874,
    4.0,
    986935016)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2921,
    4.0,
    945078708)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2926,
    5.0,
    986934870)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2959,
    2.0,
    945078528)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2973,
    2.0,
    945078946)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    2997,
    4.0,
    986848610)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3033,
    4.0,
    986936200)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3044,
    5.0,
    945079920)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3060,
    4.0,
    986934884)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3079,
    3.0,
    964778197)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3083,
    5.0,
    964622487)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3160,
    4.0,
    964539121)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3175,
    1.0,
    964538930)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3176,
    4.0,
    964539771)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3204,
    4.0,
    964539828)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3255,
    4.0,
    964623306)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3317,
    4.0,
    986934498)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3358,
    3.0,
    964622758)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3365,
    5.0,
    964538329)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3386,
    4.0,
    964539395)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3408,
    4.0,
    986849238)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3481,
    2.0,
    964538243)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3489,
    1.0,
    986848908)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3508,
    5.0,
    964538351)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3538,
    2.0,
    986849212)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3591,
    1.0,
    986935199)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3788,
    3.0,
    964539085)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3809,
    3.0,
    986936207)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3851,
    5.0,
    986849180)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3897,
    4.0,
    986934465)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3911,
    3.0,
    986849149)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3967,
    4.0,
    986849164)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    3996,
    4.0,
    986849130)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4002,
    3.0,
    986934819)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4014,
    1.0,
    986849254)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4020,
    3.0,
    986848856)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4021,
    4.0,
    986849180)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4027,
    3.0,
    986849201)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4029,
    3.0,
    986849226)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4033,
    4.0,
    986849149)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4034,
    5.0,
    986848753)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4074,
    3.0,
    986848665)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4121,
    4.0,
    986934901)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4144,
    3.0,
    986848685)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4166,
    3.0,
    986848700)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4226,
    2.0,
    1007569424)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4239,
    5.0,
    986848685)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4246,
    4.0,
    1007574542)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4252,
    3.0,
    1007569465)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4260,
    2.0,
    1007569424)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4273,
    4.0,
    1007574470)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4308,
    1.0,
    1007569465)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4347,
    4.0,
    1007569586)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4381,
    3.0,
    1007574509)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4641,
    1.0,
    1007569586)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4741,
    3.0,
    1007574532)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4765,
    5.0,
    1007569445)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4881,
    3.0,
    1007569445)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4896,
    4.0,
    1007574532)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4902,
    4.0,
    1007569465)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    4,
    4967,
    5.0,
    1007569424)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    1,
    4.0,
    847434962)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    21,
    4.0,
    847435238)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    34,
    4.0,
    847434881)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    36,
    4.0,
    847435292)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    39,
    3.0,
    847434961)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    50,
    4.0,
    847434881)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    58,
    5.0,
    847435238)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    110,
    4.0,
    847434880)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    150,
    3.0,
    847434748)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    153,
    3.0,
    847434802)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    232,
    4.0,
    847435292)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    247,
    5.0,
    847435337)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    253,
    3.0,
    847435292)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    261,
    4.0,
    847435238)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    265,
    3.0,
    847435129)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    266,
    1.0,
    847435311)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    290,
    5.0,
    847435311)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    296,
    5.0,
    847434748)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    300,
    3.0,
    847435337)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    316,
    2.0,
    847434832)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    318,
    3.0,
    847434880)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    344,
    3.0,
    847434802)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    349,
    3.0,
    847434832)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    357,
    2.0,
    847435238)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    364,
    3.0,
    847434882)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    367,
    4.0,
    847435129)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    380,
    2.0,
    847434748)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    410,
    3.0,
    847435292)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    457,
    4.0,
    847434801)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    474,
    4.0,
    847435337)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    475,
    5.0,
    847435311)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    515,
    3.0,
    847435129)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    527,
    5.0,
    847434960)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    531,
    4.0,
    847435258)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    534,
    3.0,
    847435311)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    588,
    4.0,
    847434801)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    589,
    3.0,
    847435258)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    590,
    5.0,
    847434747)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    592,
    3.0,
    847434747)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    594,
    5.0,
    847435238)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    595,
    5.0,
    847434832)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    596,
    5.0,
    847435292)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    597,
    3.0,
    847434962)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    5,
    608,
    3.0,
    847435258)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    2,
    4.0,
    845553522)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    3,
    5.0,
    845554296)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    4,
    3.0,
    845554349)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    5,
    5.0,
    845553938)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    6,
    4.0,
    845553757)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    7,
    4.0,
    845554264)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    8,
    3.0,
    845555281)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    10,
    3.0,
    845553253)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    11,
    4.0,
    845553489)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    13,
    3.0,
    845555588)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    15,
    4.0,
    845554505)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    16,
    4.0,
    845553819)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    17,
    4.0,
    845553559)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    19,
    2.0,
    845553382)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    21,
    2.0,
    845553382)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    22,
    5.0,
    845553875)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    24,
    4.0,
    845554397)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    25,
    3.0,
    845553695)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    26,
    4.0,
    845555362)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    27,
    3.0,
    845555402)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    31,
    3.0,
    845553819)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    32,
    4.0,
    845553426)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    34,
    4.0,
    845553354)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    36,
    5.0,
    845553726)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    41,
    4.0,
    845554962)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    43,
    4.0,
    845555607)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    45,
    3.0,
    845553907)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    46,
    4.0,
    845554551)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    47,
    4.0,
    845553317)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    50,
    1.0,
    845553381)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    54,
    4.0,
    845555402)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    60,
    4.0,
    845554263)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    61,
    4.0,
    845555454)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    62,
    4.0,
    845553660)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    65,
    3.0,
    845555070)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    66,
    3.0,
    845555151)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    76,
    4.0,
    845555317)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    79,
    3.0,
    845554907)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    86,
    5.0,
    845556131)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    87,
    3.0,
    845555300)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    88,
    2.0,
    845555694)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    89,
    4.0,
    845555124)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    92,
    4.0,
    845555454)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    93,
    4.0,
    845554584)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    95,
    4.0,
    845553559)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    100,
    3.0,
    845555151)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    102,
    1.0,
    845555436)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    104,
    4.0,
    845554349)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    105,
    3.0,
    845553757)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    110,
    5.0,
    845553283)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    112,
    4.0,
    845553994)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    113,
    3.0,
    845556257)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    126,
    3.0,
    845555342)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    135,
    3.0,
    845554987)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    140,
    3.0,
    845555024)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    141,
    4.0,
    845553586)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    145,
    4.0,
    845553966)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    146,
    4.0,
    845555607)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    150,
    4.0,
    845553110)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    151,
    4.0,
    845553586)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    153,
    3.0,
    845553146)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    158,
    4.0,
    845553660)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    159,
    3.0,
    845555006)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    160,
    5.0,
    845553457)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    161,
    3.0,
    845553253)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    163,
    3.0,
    845553907)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    165,
    3.0,
    845553146)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    168,
    5.0,
    845553695)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    170,
    3.0,
    845554263)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    171,
    3.0,
    845555402)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    174,
    3.0,
    845554479)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    177,
    3.0,
    845554931)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    179,
    1.0,
    845555362)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    180,
    2.0,
    845555006)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    181,
    3.0,
    845553938)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    185,
    3.0,
    845553283)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    186,
    3.0,
    845553619)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    189,
    3.0,
    845556241)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    191,
    2.0,
    845554931)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    195,
    4.0,
    845554455)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    196,
    3.0,
    845553586)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    201,
    3.0,
    845556290)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    204,
    3.0,
    845553619)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    205,
    3.0,
    845555477)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    207,
    4.0,
    845554024)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    208,
    3.0,
    845553253)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    209,
    3.0,
    845556106)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    210,
    4.0,
    845556310)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    212,
    4.0,
    845556181)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    216,
    4.0,
    845554099)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    217,
    3.0,
    845555382)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    218,
    2.0,
    845553994)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    219,
    3.0,
    845556131)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    222,
    4.0,
    845554024)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    224,
    3.0,
    845553794)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    225,
    4.0,
    845553381)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    230,
    5.0,
    845553966)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    231,
    3.0,
    845553174)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    234,
    2.0,
    845554176)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    236,
    4.0,
    845553559)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    237,
    4.0,
    845553875)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    239,
    3.0,
    845554987)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    240,
    3.0,
    845555571)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    243,
    3.0,
    845555588)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    248,
    5.0,
    845554263)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    250,
    4.0,
    845555588)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    251,
    3.0,
    845556257)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    252,
    4.0,
    845553619)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    253,
    3.0,
    845553283)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    254,
    3.0,
    845555655)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    256,
    3.0,
    845553726)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    257,
    5.0,
    845554176)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    258,
    3.0,
    845555172)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    261,
    4.0,
    845553695)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    262,
    5.0,
    845554551)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    265,
    3.0,
    845553726)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    266,
    3.0,
    845553457)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    267,
    3.0,
    845554376)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    270,
    3.0,
    845555172)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    271,
    4.0,
    845555249)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    273,
    3.0,
    845553875)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    274,
    4.0,
    845555151)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    276,
    4.0,
    845553907)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    277,
    5.0,
    845553844)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    279,
    3.0,
    845555436)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    281,
    4.0,
    845554320)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    282,
    3.0,
    845553522)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    288,
    2.0,
    845553283)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    289,
    3.0,
    845554455)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    291,
    3.0,
    845555571)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    292,
    4.0,
    845553253)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    293,
    3.0,
    845553660)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    296,
    2.0,
    845553110)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    302,
    3.0,
    845555436)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    303,
    3.0,
    845554099)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    304,
    4.0,
    845555546)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    310,
    3.0,
    845556119)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    312,
    1.0,
    845555151)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    313,
    3.0,
    845555546)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    314,
    5.0,
    845554603)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    315,
    4.0,
    845553522)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    316,
    5.0,
    845553174)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    317,
    4.0,
    845553457)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    318,
    5.0,
    845553200)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    327,
    1.0,
    845554062)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    329,
    4.0,
    845553200)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    330,
    3.0,
    845555071)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    332,
    3.0,
    845555046)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    333,
    5.0,
    845553757)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    336,
    3.0,
    845556223)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    337,
    5.0,
    845553586)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    339,
    4.0,
    845553253)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    340,
    4.0,
    845555265)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    342,
    3.0,
    845553938)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    343,
    3.0,
    845555172)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    344,
    3.0,
    845553146)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    347,
    3.0,
    845555300)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    348,
    3.0,
    845553938)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    349,
    5.0,
    845553146)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    350,
    5.0,
    845553489)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    351,
    4.0,
    845554455)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    352,
    3.0,
    845555382)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    353,
    4.0,
    845553726)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    354,
    4.0,
    845555402)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    355,
    4.0,
    845553819)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    356,
    5.0,
    845553200)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    357,
    3.0,
    845553457)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    358,
    3.0,
    845555265)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    359,
    3.0,
    845556412)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    360,
    3.0,
    845555094)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    361,
    4.0,
    845554376)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    362,
    3.0,
    845553994)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    364,
    5.0,
    845553317)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    366,
    3.0,
    845554962)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    367,
    4.0,
    845553317)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    368,
    5.0,
    845553726)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    370,
    4.0,
    845553794)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    371,
    3.0,
    845554141)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    374,
    3.0,
    845554296)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    377,
    5.0,
    845553317)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    378,
    3.0,
    845554987)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    380,
    4.0,
    845553110)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    381,
    3.0,
    845553994)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    382,
    3.0,
    845554397)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    383,
    3.0,
    845554320)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    405,
    3.0,
    845554603)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    410,
    3.0,
    845553354)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    412,
    3.0,
    845554505)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    415,
    4.0,
    845554420)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    416,
    3.0,
    845554962)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    419,
    3.0,
    845554224)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    426,
    3.0,
    845554551)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    432,
    5.0,
    845553489)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    434,
    4.0,
    845553200)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    435,
    3.0,
    845553489)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    437,
    3.0,
    845554505)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    440,
    4.0,
    845553457)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    445,
    3.0,
    845555124)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    450,
    4.0,
    845555024)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    454,
    4.0,
    845553283)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    455,
    3.0,
    845554062)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    457,
    5.0,
    845553174)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    458,
    3.0,
    845555546)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    460,
    3.0,
    845555281)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    466,
    2.0,
    845553844)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    468,
    4.0,
    845553907)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    469,
    4.0,
    845555477)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    472,
    3.0,
    845555632)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    474,
    4.0,
    845553522)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    475,
    4.0,
    845554099)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    477,
    4.0,
    845554141)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    480,
    5.0,
    845553200)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    485,
    3.0,
    845553794)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    489,
    3.0,
    845554505)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    490,
    3.0,
    845554584)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    491,
    4.0,
    845554141)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    493,
    3.0,
    845555172)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    494,
    3.0,
    845554176)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    497,
    3.0,
    845553819)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    500,
    5.0,
    845553354)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    502,
    3.0,
    845554455)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    505,
    3.0,
    845555317)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    508,
    4.0,
    845553586)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    509,
    3.0,
    845553522)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    510,
    3.0,
    845555546)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    515,
    4.0,
    845553794)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    516,
    4.0,
    845554908)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    520,
    3.0,
    845553844)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    524,
    3.0,
    845554479)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    527,
    3.0,
    845553426)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    531,
    3.0,
    845554296)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    532,
    3.0,
    845554224)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    536,
    3.0,
    845556181)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    537,
    3.0,
    845554551)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    539,
    3.0,
    845553426)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    540,
    3.0,
    845554099)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    542,
    4.0,
    845554524)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    543,
    3.0,
    845554099)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    546,
    2.0,
    845554349)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    548,
    3.0,
    845554908)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    552,
    3.0,
    845553875)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    553,
    5.0,
    845553559)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    569,
    4.0,
    845555342)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    575,
    3.0,
    845555070)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    587,
    5.0,
    845553381)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    588,
    5.0,
    845553146)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    589,
    3.0,
    845553317)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    590,
    5.0,
    845553109)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    592,
    3.0,
    845553109)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    593,
    4.0,
    845553174)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    594,
    4.0,
    845553819)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    595,
    5.0,
    845553174)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    596,
    3.0,
    845554141)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    597,
    4.0,
    845553354)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    606,
    3.0,
    845555024)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    608,
    3.0,
    845553844)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    609,
    4.0,
    845555342)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    616,
    5.0,
    845554062)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    628,
    3.0,
    845555300)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    631,
    4.0,
    845555265)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    637,
    4.0,
    845555046)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    640,
    1.0,
    845555362)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    647,
    4.0,
    845555151)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    662,
    3.0,
    845556147)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    667,
    3.0,
    845555342)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    694,
    3.0,
    845555694)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    697,
    3.0,
    845556378)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    700,
    4.0,
    845556147)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    704,
    3.0,
    845555571)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    708,
    4.0,
    845554376)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    709,
    5.0,
    845555249)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    710,
    3.0,
    845556223)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    711,
    4.0,
    845555317)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    719,
    2.0,
    845555694)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    736,
    5.0,
    845553619)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    747,
    3.0,
    845555046)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    762,
    1.0,
    845555006)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    765,
    3.0,
    845555632)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    775,
    3.0,
    845556462)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    780,
    5.0,
    845556915)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    783,
    5.0,
    845554584)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    795,
    3.0,
    845556506)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    799,
    3.0,
    845555656)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    801,
    3.0,
    845556194)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    802,
    4.0,
    845554584)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    818,
    3.0,
    845555514)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    830,
    5.0,
    845556222)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    835,
    4.0,
    845556194)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    837,
    3.0,
    845556241)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    838,
    4.0,
    845555514)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    839,
    3.0,
    845556120)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    842,
    3.0,
    845555675)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    848,
    4.0,
    845556340)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    852,
    4.0,
    845555694)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    867,
    3.0,
    845556412)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    880,
    3.0,
    845556181)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    881,
    3.0,
    845556340)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    888,
    3.0,
    845556448)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    891,
    3.0,
    845556241)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    979,
    3.0,
    845556808)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    981,
    3.0,
    845556567)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    986,
    4.0,
    845556475)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    991,
    4.0,
    845556808)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    996,
    4.0,
    845556323)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    999,
    2.0,
    845556412)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    1004,
    4.0,
    845556506)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    1006,
    4.0,
    845556694)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    1042,
    3.0,
    845556462)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    1049,
    5.0,
    845556694)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    1061,
    4.0,
    845556860)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    1064,
    4.0,
    845556579)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    1073,
    3.0,
    845555571)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    1082,
    4.0,
    845556278)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    6,
    1084,
    3.0,
    845555454)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1,
    4.5,
    1106635946)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    50,
    4.5,
    1106635993)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    58,
    3.0,
    1106635520)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    150,
    4.5,
    1106635925)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    165,
    4.0,
    1106635987)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    260,
    5.0,
    1106635933)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    356,
    5.0,
    1106635915)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    380,
    3.0,
    1106635937)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    466,
    5.0,
    1106635532)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    480,
    5.0,
    1106635917)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    587,
    2.0,
    1106635714)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    588,
    3.0,
    1106635971)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    589,
    2.5,
    1106635940)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    592,
    3.0,
    1106635922)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    593,
    5.0,
    1106635912)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    595,
    3.5,
    1106712636)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    648,
    4.0,
    1106635981)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    750,
    4.0,
    1106636810)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    780,
    4.5,
    1106635943)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    920,
    3.0,
    1106635685)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    924,
    4.0,
    1106712615)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1101,
    4.0,
    1106635502)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1183,
    1.5,
    1106712613)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1196,
    4.0,
    1106635996)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1208,
    4.0,
    1106635462)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1210,
    4.0,
    1106635965)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1219,
    5.0,
    1106635496)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1220,
    4.5,
    1106635464)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1240,
    5.0,
    1106712575)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1246,
    1.5,
    1106635678)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1270,
    5.0,
    1106635681)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1517,
    3.5,
    1106635489)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1584,
    5.0,
    1106635423)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1610,
    4.0,
    1106635429)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1617,
    3.0,
    1107127060)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1682,
    3.0,
    1106635653)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1784,
    0.5,
    1106635416)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1917,
    4.0,
    1106635484)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1923,
    1.5,
    1106635444)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    1954,
    4.5,
    1106635657)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2019,
    5.0,
    1106713565)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2324,
    2.0,
    1106712559)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2353,
    3.5,
    1106635625)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2529,
    5.0,
    1106635640)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2628,
    1.5,
    1106712553)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2640,
    3.0,
    1106635540)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2671,
    4.5,
    1113542732)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2683,
    2.0,
    1106635420)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2688,
    2.5,
    1106713072)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2701,
    1.5,
    1106713076)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2717,
    3.5,
    1106713081)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2762,
    4.5,
    1106635648)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    2858,
    4.0,
    1106712546)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3114,
    4.5,
    1106635500)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3354,
    1.5,
    1106713005)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3408,
    4.5,
    1106712549)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3578,
    1.5,
    1106636534)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3623,
    1.0,
    1106712541)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3793,
    3.5,
    1106635630)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3869,
    5.0,
    1106635733)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3916,
    4.0,
    1106636596)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3977,
    2.5,
    1106635635)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    3994,
    3.0,
    1161738301)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4018,
    4.0,
    1106712913)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4223,
    2.0,
    1106635742)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4246,
    2.0,
    1110855253)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4306,
    4.0,
    1106635524)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4310,
    0.5,
    1107127033)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4370,
    4.5,
    1106712869)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4643,
    1.0,
    1106635749)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4700,
    1.5,
    1109746591)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4844,
    1.5,
    1161738352)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4874,
    3.0,
    1106635738)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4886,
    4.0,
    1106636531)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4896,
    4.0,
    1106636718)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4963,
    4.0,
    1106636702)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4993,
    4.5,
    1106636589)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    4995,
    4.5,
    1106636610)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5218,
    3.5,
    1106712866)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5349,
    3.5,
    1106636606)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5378,
    0.5,
    1106635735)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5445,
    4.0,
    1106636707)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5459,
    3.0,
    1106712820)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5464,
    3.0,
    1106636612)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5502,
    1.5,
    1106635745)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5618,
    5.0,
    1106713586)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5816,
    4.5,
    1106635705)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5952,
    4.5,
    1106636527)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5989,
    4.0,
    1106636600)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    5991,
    4.5,
    1106712818)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    6333,
    4.0,
    1106636516)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    6365,
    4.0,
    1106712831)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    6534,
    0.5,
    1157949714)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    6539,
    4.5,
    1106636584)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    6863,
    4.5,
    1106712827)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    6934,
    2.0,
    1106712812)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    7143,
    4.5,
    1106636579)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    7153,
    4.0,
    1106636520)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    7155,
    3.0,
    1173051472)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    7445,
    4.0,
    1107473963)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8207,
    4.5,
    1106713442)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8360,
    3.5,
    1106636782)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8368,
    2.5,
    1106636592)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8373,
    2.0,
    1108602792)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8528,
    4.5,
    1106636844)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8636,
    4.5,
    1106636511)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8665,
    3.5,
    1108602755)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8666,
    1.0,
    1106779625)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8783,
    1.0,
    1161738306)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8798,
    4.5,
    1106636602)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8808,
    1.5,
    1109746594)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8865,
    1.0,
    1106713549)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8870,
    3.5,
    1118025961)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8907,
    1.0,
    1110757877)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8908,
    4.5,
    1122333561)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8949,
    4.0,
    1110757890)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8957,
    4.0,
    1106636098)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8958,
    3.5,
    1110173697)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8961,
    4.0,
    1106636064)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8965,
    1.0,
    1106636095)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8970,
    2.5,
    1106636069)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8972,
    2.5,
    1111552650)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    8984,
    4.0,
    1106636101)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    27741,
    3.0,
    1107474020)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    30812,
    3.5,
    1113353083)
;
INSERT INTO ratings (user_id, movie_id, rating, timestamp) VALUES (
    7,
    30816,
    2.0,
    1107127004)
;

-- Tags
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    2,
    60756,
    'funny',
    1445714994)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    2,
    60756,
    'Highly quotable',
    1445714996)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    2,
    60756,
    'will ferrell',
    1445714992)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    2,
    89774,
    'Boxing story',
    1445715207)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    2,
    89774,
    'MMA',
    1445715200)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    2,
    89774,
    'Tom Hardy',
    1445715205)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    2,
    106782,
    'drugs',
    1445715054)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    2,
    106782,
    'Leonardo DiCaprio',
    1445715051)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    2,
    106782,
    'Martin Scorsese',
    1445715056)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    7,
    48516,
    'way too long',
    1169687325)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    431,
    'Al Pacino',
    1462138765)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    431,
    'gangster',
    1462138749)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    431,
    'mafia',
    1462138755)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    1221,
    'Al Pacino',
    1461699306)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    1221,
    'Mafia',
    1461699303)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    5995,
    'holocaust',
    1455735472)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    5995,
    'true story',
    1455735479)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    44665,
    'twist ending',
    1456948283)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    52604,
    'Anthony Hopkins',
    1457650696)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    52604,
    'courtroom drama',
    1457650711)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    52604,
    'twist ending',
    1457650682)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    88094,
    'britpop',
    1457444500)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    88094,
    'indie record label',
    1457444592)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    88094,
    'music',
    1457444609)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    144210,
    'dumpster diving',
    1455060381)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    18,
    144210,
    'Sustainability',
    1455060452)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    21,
    1569,
    'romantic comedy',
    1419805413)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    21,
    1569,
    'wedding',
    1419805419)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    21,
    118985,
    'painter',
    1419805477)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    21,
    119141,
    'bloody',
    1419793962)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    49,
    109487,
    'black hole',
    1493093306)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    49,
    109487,
    'sci-fi',
    1493093332)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    49,
    109487,
    'time-travel',
    1493093356)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2,
    'fantasy',
    1528843929)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2,
    'magic board game',
    1528843932)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2,
    'Robin Williams',
    1528843907)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    110,
    'beautiful scenery',
    1528152541)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    110,
    'epic',
    1528152532)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    110,
    'historical',
    1528152523)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    110,
    'inspirational',
    1528152527)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    110,
    'Medieval',
    1528152528)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    110,
    'mel gibson',
    1528152521)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    110,
    'Oscar (Best Cinematography)',
    1528152539)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    110,
    'revenge',
    1528152531)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    110,
    'sword fight',
    1528152535)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    410,
    'black comedy',
    1525636607)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    410,
    'Christina Ricci',
    1525636685)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    410,
    'Christopher Lloyd',
    1525636622)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    410,
    'dark comedy',
    1525636610)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    410,
    'family',
    1525636708)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    410,
    'gothic',
    1525636609)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2023,
    'Al Pacino',
    1525636728)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2023,
    'Andy Garcia',
    1525636768)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2023,
    'Classic',
    1525636752)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2023,
    'Francis Ford Coppola',
    1525636752)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2023,
    'mafia',
    1525636733)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2124,
    'black comedy',
    1525636847)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2124,
    'Christina Ricci',
    1525636867)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2124,
    'Christopher Lloyd',
    1525636859)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2124,
    'Family',
    1525636855)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2124,
    'gothic',
    1525636849)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2124,
    'quirky',
    1525636846)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2953,
    'family',
    1525636883)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2953,
    'funny',
    1525636885)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2953,
    'Macaulay Culkin',
    1525636890)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    2953,
    'sequel',
    1525636887)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3114,
    'animation',
    1525636903)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3114,
    'Disney',
    1525636902)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3114,
    'funny',
    1525636913)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3114,
    'original',
    1525636917)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3114,
    'Pixar',
    1525636901)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3114,
    'sequel',
    1525636910)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3114,
    'Tom Hanks',
    1525636925)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3578,
    'ancient Rome',
    1528152504)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3578,
    'Epic',
    1528152469)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3578,
    'history',
    1528152467)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3578,
    'imdb top 250',
    1528152498)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3578,
    'revenge',
    1528152496)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3578,
    'Rome',
    1528152463)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    3578,
    'Russell Crowe',
    1528152465)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    4223,
    'Ed Harris',
    1528024869)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    4223,
    'Jude Law',
    1528024854)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    4223,
    'Rachel Weisz',
    1528024873)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    4223,
    'sniper',
    1528024852)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    4223,
    'World War II',
    1528024877)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    5388,
    'Al Pacino',
    1530310809)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    5388,
    'atmospheric',
    1530310959)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    5388,
    'Hilary Swank',
    1530310952)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    5388,
    'Robin Williams',
    1530310811)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6058,
    'sequel',
    1525555053)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6058,
    'violent',
    1525555051)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6534,
    'dogs',
    1525554096)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6534,
    'Eric Bana',
    1525554086)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6534,
    'mad scientist',
    1525554098)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6534,
    'marvel',
    1525554100)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6541,
    'captain nemo',
    1525554054)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6541,
    'comic book',
    1525554028)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6541,
    'gothic',
    1525554056)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6541,
    'Peta Wilson',
    1525554040)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6541,
    'Sean Connery',
    1525554026)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6541,
    'superhero',
    1525554051)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6564,
    'adventure',
    1525554439)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6564,
    'Angelina Jolie',
    1525554432)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    6564,
    'heroine in tight suit',
    1525554441)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    7153,
    'Adventure',
    1528152558)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    7153,
    'ensemble cast',
    1528152578)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    7153,
    'fantasy',
    1528152556)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    7153,
    'fantasy world',
    1528152571)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    7153,
    'great soundtrack',
    1528152575)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    7153,
    'lord of the rings',
    1528152581)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    7153,
    'scenic',
    1528152580)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    7153,
    'stylized',
    1528152577)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    7153,
    'Tolkien',
    1528152561)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    8641,
    'hilarious',
    1526249138)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    8641,
    'Steve Carell',
    1526249156)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    8641,
    'Will Ferrell',
    1526249135)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27660,
    'animation',
    1525554490)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27660,
    'anime',
    1525554488)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27660,
    'cyberpunk',
    1525554486)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27660,
    'dark',
    1525554500)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27660,
    'Matrix',
    1525554493)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27660,
    'sci-fi',
    1525554491)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27706,
    'dark comedy',
    1526248598)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27706,
    'Jim Carrey',
    1526248575)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27706,
    'meryl streep',
    1526248580)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27706,
    'quirky',
    1526248553)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27706,
    'stylized',
    1526248601)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27808,
    'Adam Sandler',
    1525554900)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27808,
    'family',
    1525554919)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27808,
    'sweet',
    1525554922)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27831,
    'British gangster',
    1532723304)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27831,
    'confusing',
    1532723364)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27831,
    'daniel craig',
    1532723305)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27831,
    'Exquisite plotting.',
    1532723355)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27831,
    'organized crime',
    1532723369)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27831,
    'stylish',
    1532723356)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    27831,
    'Tom Hardy',
    1532723359)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    31658,
    'anime',
    1525869041)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    31658,
    'fantasy world',
    1525869051)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    31658,
    'Hayao Miyazaki',
    1525869046)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    31658,
    'Studio Ghibli',
    1525869044)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    33162,
    'David Thewlis',
    1525554605)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    33162,
    'Eva Green',
    1525554550)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    33162,
    'Liam Neeson',
    1525554577)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    33162,
    'Orlando Bloom',
    1525554511)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    34150,
    'Chris Evans',
    1525554141)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    34150,
    'comic book',
    1525554003)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    34150,
    'heroine in tight suit',
    1525554138)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    34150,
    'Jessica Alba',
    1525554127)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    34150,
    'sexy female scientist',
    1525554144)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    34150,
    'superhero',
    1525553977)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    37729,
    'gothic',
    1530310527)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    37729,
    'helena bonham carter',
    1530310534)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    37729,
    'Johnny Depp',
    1530310529)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    37729,
    'Tim Burton',
    1530310526)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    37729,
    'visually appealing',
    1530310541)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    38061,
    'black comedy',
    1532723380)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    38061,
    'clever',
    1532723403)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    38061,
    'fast-paced dialogue',
    1532723406)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    38061,
    'good dialogue',
    1532723428)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    38061,
    'Robert Downey Jr.',
    1532723408)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    38061,
    'witty',
    1532723402)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    45447,
    'adventure',
    1525637064)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    45447,
    'Audrey Tautou',
    1525637075)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    45447,
    'conspiracy theory',
    1525637062)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    45447,
    'Mystery',
    1525637081)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    45447,
    'Paris',
    1525637079)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    45447,
    'Tom Hanks',
    1525637067)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    45447,
    'treasure hunt',
    1525637084)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46723,
    'Brad Pitt',
    1525554217)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46723,
    'cate blanchett',
    1525554227)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46723,
    'multiple storylines',
    1525554215)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46723,
    'social commentary',
    1525554246)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46972,
    'Ben Stiller',
    1525554254)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46972,
    'Robin Williams',
    1525554255)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46976,
    'emma thompson',
    1536874692)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46976,
    'Maggie Gyllenhaal',
    1536874655)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46976,
    'modern fantasy',
    1536874658)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46976,
    'romance',
    1536874651)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46976,
    'surreal',
    1536874662)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    46976,
    'Will Ferrell',
    1536874653)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    49130,
    'Marion Cotillard',
    1526582371)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    49530,
    'Africa',
    1536874706)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    49530,
    'corruption',
    1536874704)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    49530,
    'Jennifer Connelly',
    1536874701)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    49530,
    'justice',
    1536874709)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    49530,
    'Leonardo DiCaprio',
    1536874698)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    53464,
    'bad acting',
    1525554797)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    53464,
    'bad jokes',
    1525554811)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    53464,
    'bad plot',
    1525554822)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    53464,
    'Chris Evans',
    1525554807)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    53464,
    'Jessica Alba',
    1525554794)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    53464,
    'Marvel',
    1525554792)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    53464,
    'sexy female scientist',
    1525554813)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    58047,
    'Rachel Weisz',
    1528909364)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    58047,
    'Ryan Reynolds',
    1528909347)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    59501,
    'fantasy',
    1525637507)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    59501,
    'lion',
    1525637517)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    59501,
    'narnia',
    1525637508)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    59501,
    'Tilda Swinton',
    1525637603)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    60074,
    'bad script',
    1525554116)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    60074,
    'Charlize Theron',
    1525554121)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    60074,
    'Will Smith',
    1525554107)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    60126,
    'Anne Hathaway',
    1527004240)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    60126,
    'Steve Carell',
    1527004238)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    60756,
    'comedy',
    1528934384)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    60756,
    'funny',
    1528934381)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    60756,
    'will ferrell',
    1528934379)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    61024,
    'comedy',
    1528934218)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    61024,
    'James Franco',
    1528934214)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    61024,
    'Seth Rogen',
    1528934216)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    61024,
    'Stoner Movie',
    1528934219)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    63992,
    'audience intelligence underestimated',
    1528934237)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    63992,
    'boring',
    1528934241)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    63992,
    'chick flick',
    1528934247)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    63992,
    'overrated',
    1528934240)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    63992,
    'Teen movie',
    1528934233)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    68848,
    'Adrien Brody',
    1527274305)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    68848,
    'con artists',
    1527274320)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    68848,
    'funny',
    1527274322)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    68848,
    'interesting characters',
    1527274324)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    68848,
    'Mark Ruffalo',
    1527274316)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    68848,
    'Rachel Weisz',
    1527274311)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    71535,
    'Bill Murray',
    1529777198)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    71535,
    'dark comedy',
    1529777189)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    71535,
    'Emma Stone',
    1529777192)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    71535,
    'funny',
    1529777194)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    71535,
    'Jesse Eisenberg',
    1529777186)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    71535,
    'Woody Harrelson',
    1529777129)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    87430,
    'audience intelligence underestimated',
    1525555172)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    87430,
    'CGI',
    1525555168)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    87430,
    'cheesy',
    1525555170)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    87430,
    'comic book',
    1525555164)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    87430,
    'DC',
    1525555176)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    87430,
    'DC Comics',
    1525555184)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    87430,
    'Ryan Reynolds',
    1525555162)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    87430,
    'space',
    1525555182)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    87430,
    'superhero',
    1525555181)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    88405,
    'comedy',
    1525554879)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    88405,
    'funny',
    1525554868)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    88405,
    'happy ending',
    1525554872)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    88405,
    'HOT actress',
    1525554880)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    88405,
    'Justin Timberlake',
    1525554873)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    88405,
    'Mila Kunis',
    1525554861)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    88405,
    'New York City',
    1525554866)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    88405,
    'romance',
    1525554883)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    88405,
    'sex',
    1525554864)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    96861,
    'Istanbul',
    1529611262)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    96861,
    'Liam Neeson',
    1529611250)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    96861,
    'predictable',
    1529611266)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    96861,
    'Turkey',
    1529611256)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    96861,
    'unnecessary sequel',
    1529611269)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'action',
    1526078792)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'Christoph Waltz',
    1526078766)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'funny',
    1526078778)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'good soundtrack',
    1526078785)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'Great performances',
    1526078768)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'Humour',
    1526078787)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'Leonardo DiCaprio',
    1526078762)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'Quentin Tarantino',
    1526078760)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'Samuel L. Jackson',
    1526078763)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'Soundtrack',
    1526078781)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    99114,
    'western',
    1526078773)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    103042,
    'Amy Adams',
    1525555328)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    103042,
    'superhero',
    1525555319)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    104863,
    'daniel radcliffe',
    1528843968)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    104863,
    'zoe kazan',
    1528843965)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    107348,
    'comedy',
    1528935011)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    107348,
    'Steve Carell',
    1528935000)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    107348,
    'stupid but funny',
    1528935013)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    107348,
    'will ferrell',
    1528935002)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    108190,
    'anti-intellectual',
    1525554841)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    108190,
    'bad writing',
    1525554835)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    108190,
    'dystopia',
    1525554830)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    108190,
    'new society',
    1525554832)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    108190,
    'plot holes',
    1525554845)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    108190,
    'predictable',
    1525554847)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    108190,
    'scifi',
    1525554839)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    108190,
    'unintelligent',
    1525554843)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    111743,
    'Charlize Theron',
    1530471420)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    111743,
    'Liam Neeson',
    1530471434)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    111743,
    'Seth MacFarlane',
    1530471419)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    111743,
    'witty',
    1530471417)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    114180,
    'action',
    1525554460)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    114180,
    'dystopia',
    1525554450)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    114180,
    'plot holes',
    1525554454)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    114180,
    'post-apocalyptic',
    1525554458)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    114180,
    'survival',
    1525554456)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    114180,
    'thriller',
    1525554471)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    114180,
    'unexplained',
    1525554473)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    114180,
    'weak plot',
    1525554463)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    115149,
    'dark hero',
    1528152251)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    115149,
    'gun-fu',
    1528152257)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    115149,
    'Keanu Reeves',
    1528152244)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    115149,
    'Revenge',
    1528152241)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    115149,
    'secret society',
    1528152258)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    115149,
    'stylish',
    1528152247)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    116897,
    'black comedy',
    1528152849)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    116897,
    'dark comedy',
    1528152859)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    116897,
    'dark humor',
    1528152847)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    116897,
    'ironic',
    1528152854)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    116897,
    'multiple short stories',
    1528152862)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    116897,
    'short stories',
    1528152852)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    119141,
    'bromance',
    1525555146)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    119141,
    'comedy',
    1525555138)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    119141,
    'funny',
    1525555129)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    119141,
    'James Franco',
    1525555132)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    119141,
    'Seth Rogen',
    1525555127)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'comic book',
    1526029023)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'Dr. Strange',
    1526029001)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'Great villain',
    1526029025)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'Guardians of the Galaxy',
    1526029015)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'Marvel',
    1526028997)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'MCU',
    1526028983)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'Robert Downey Jr.',
    1526028991)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'Thanos',
    1526028985)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'Thor',
    1526029010)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    122912,
    'Visually stunning',
    1526028994)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    128360,
    'characters',
    1526078910)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    128360,
    'Dialogue',
    1526078902)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    128360,
    'humor',
    1526078901)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    128360,
    'Kurt Russell',
    1526078886)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    128360,
    'Quentin Tarantino',
    1526078877)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    128360,
    'Samuel L. Jackson',
    1526078883)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    128360,
    'tension building',
    1526078880)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    128360,
    'violent',
    1526078912)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    128360,
    'Western',
    1526078899)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135133,
    'dystopia',
    1525637480)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135133,
    'Jennifer Lawrence',
    1525637484)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135133,
    'love story',
    1525637487)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135133,
    'nonsense',
    1525637488)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135133,
    'politics',
    1525637499)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135133,
    'rebellion',
    1525637483)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135133,
    'revolution',
    1525637481)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135518,
    'Ben Kingsley',
    1530471365)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135518,
    'ethics',
    1530471346)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135518,
    'immortality',
    1530471343)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135518,
    'ryan reynolds',
    1530471352)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Bad story',
    1525555090)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Bad writing',
    1525555084)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Batman',
    1525555077)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Ben Affleck',
    1525555106)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'comic book',
    1525555092)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'dc comics',
    1525555080)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'good soundtrack',
    1525555089)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Harley Quinn',
    1525555079)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Harley Quinn''s ass',
    1525555094)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Horrible directing',
    1525555099)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Jared Leto',
    1525555072)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Joker',
    1525555074)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'lack of plot',
    1525555069)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Margot Robbie',
    1525555073)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Poor story',
    1525555087)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'poorly paced',
    1525555083)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'superhero',
    1525555103)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'visually appealing',
    1525555109)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    135536,
    'Will Smith',
    1525555076)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    136864,
    'action',
    1525555242)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    136864,
    'batman',
    1525555211)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    136864,
    'ben affleck',
    1525555223)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    136864,
    'dark',
    1525555227)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    136864,
    'dc comics',
    1525555225)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    136864,
    'Gal Gadot',
    1525555240)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    136864,
    'superhero',
    1525555243)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    136864,
    'superman',
    1525555213)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    136864,
    'wonderwoman',
    1525555233)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    139385,
    'leonardo DiCarpio',
    1526079025)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    139385,
    'survival',
    1526079019)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    139385,
    'tom hardy',
    1526079029)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    139385,
    'visually appealing',
    1526079038)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    158966,
    'building a family',
    1526076353)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    158966,
    'creative',
    1526076341)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    158966,
    'freedom',
    1526076339)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    158966,
    'good writing',
    1526076350)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    158966,
    'individualism',
    1526076344)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    158966,
    'Viggo Mortensen',
    1526076342)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    168248,
    'action',
    1528152295)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    168248,
    'dark hero',
    1528152291)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    168248,
    'gun tactics',
    1528152287)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    168248,
    'hitman',
    1528152293)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    168248,
    'Keanu Reeves',
    1528152284)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    168248,
    'organized crime',
    1528152289)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    168248,
    'secret society',
    1528152282)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    174053,
    'Dystopia',
    1525637341)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    174053,
    'future',
    1525637343)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    174053,
    'interesting',
    1525637346)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    174053,
    'jon hamm',
    1525637384)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    174053,
    'thought provoking',
    1525637344)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    179401,
    'Action',
    1528934538)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    179401,
    'Comedy',
    1528934534)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    179401,
    'Dwayne Johnson',
    1528934540)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    179401,
    'funny',
    1528934536)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    183611,
    'Comedy',
    1526244689)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    183611,
    'funny',
    1526244688)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    183611,
    'Rachel McAdams',
    1526244709)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    184471,
    'adventure',
    1528024900)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    184471,
    'Alicia Vikander',
    1528024914)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    184471,
    'video game adaptation',
    1528024898)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    187593,
    'Josh Brolin',
    1527274096)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    187593,
    'Ryan Reynolds',
    1527274092)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    187593,
    'sarcasm',
    1527274090)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    187595,
    'Emilia Clarke',
    1528934560)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    62,
    187595,
    'star wars',
    1528934552)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    63,
    260,
    'classic',
    1443199698)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    63,
    260,
    'space action',
    1443199710)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    76,
    260,
    'action',
    1439165594)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    76,
    260,
    'sci-fi',
    1439165588)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    103,
    260,
    'EPIC',
    1431954312)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    103,
    260,
    'great soundtrack',
    1431954337)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    103,
    296,
    'good dialogue',
    1431954555)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    103,
    296,
    'great soundtrack',
    1431954555)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    103,
    296,
    'non-linear',
    1431954555)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    106,
    4896,
    'Everything you want is here',
    1467566944)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    106,
    106489,
    'adventure',
    1467566979)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    112,
    260,
    'classic sci-fi',
    1442535682)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    112,
    260,
    'engrossing adventure',
    1442535673)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    112,
    260,
    'EPIC',
    1442535666)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    260,
    'classic',
    1435942530)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    260,
    'Nerd',
    1435942520)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    101142,
    'animation',
    1436563067)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    101142,
    'funny',
    1436563067)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    101142,
    'stone age',
    1436563067)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    115149,
    'action',
    1437763143)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    115149,
    'killer',
    1437763143)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    115149,
    'widows/widowers',
    1437763143)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    115617,
    'animation',
    1435944890)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    115617,
    'kids',
    1435944890)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    115617,
    'robots',
    1435944890)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    120635,
    'action',
    1438439306)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    120635,
    'murder',
    1438439306)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    119,
    120635,
    'police',
    1438439306)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    1726,
    'Kevin Costner',
    1474483317)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    1726,
    'Post apocalyptic',
    1474483320)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    2387,
    'dark comedy',
    1474382225)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    2387,
    'dark humor',
    1474382223)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    3052,
    'irreverent',
    1474592072)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    3052,
    'jay and silent bob',
    1474592004)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    3052,
    'Kevin Smith',
    1474592000)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    3052,
    'satire',
    1474591997)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    5088,
    'irreverent',
    1474592207)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'based on a book',
    1474381749)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'bloody',
    1474381755)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'brutal',
    1474381612)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'controversial',
    1474381812)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'dystopia',
    1474381779)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'goretastic',
    1474381786)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'satire',
    1474381739)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'social commentary',
    1474381788)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'survival',
    1474381609)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7022,
    'violence',
    1474381745)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7254,
    'alternate reality',
    1474381441)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7254,
    'sci-fi',
    1474381448)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7254,
    'science fiction',
    1474381455)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    7254,
    'time travel',
    1474381439)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    8957,
    'brutal',
    1474382001)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    8957,
    'clever',
    1474382019)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    8957,
    'Disturbing',
    1474382015)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    8957,
    'great ending',
    1474381987)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    8957,
    'mindfuck',
    1474381982)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    8957,
    'surprise ending',
    1474381973)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    8957,
    'suspense',
    1474381994)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    9010,
    'cruel characters',
    1474381529)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    42632,
    'brutality',
    1474381492)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    58301,
    'dark humor',
    1474381561)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    60950,
    'threesome',
    1474591817)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    62434,
    'Seth Rogen',
    1474592476)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    62434,
    'Sexual Humor',
    1474592473)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    67695,
    'Seth Rogen',
    1474382123)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    100083,
    'embarassing scenes',
    1474377075)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    100083,
    'offensive',
    1474377060)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    100083,
    'R language',
    1474377035)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    100083,
    'sarcasm',
    1474377015)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    100083,
    'satire',
    1474381901)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    156371,
    '80''s',
    1474469700)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    158872,
    'Crude humor',
    1474382035)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    158872,
    'mindfuck',
    1474382087)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    158872,
    'sarcasm',
    1474382053)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    158872,
    'satire',
    1474382047)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    125,
    158872,
    'Vulgar',
    1474382100)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    132,
    3556,
    'sofia coppola',
    1163148016)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    132,
    6323,
    'John Cusack',
    1161800041)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    132,
    6367,
    'Ewan McGregor',
    1161799885)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    132,
    6367,
    'Renee Zellweger',
    1161799951)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    138,
    59103,
    'jackie chan',
    1222676394)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    138,
    59103,
    'kung fu',
    1222676405)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    161,
    52287,
    'Something for everyone in this one... saw it without and plan on seeing it with kids!',
    1176498861)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    166,
    293,
    'assassin',
    1188774484)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    166,
    293,
    'Jean Reno',
    1188774487)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    166,
    54286,
    'assassin',
    1188774519)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    166,
    54286,
    'assassin-in-training (scene)',
    1188774517)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    166,
    54286,
    'espionage',
    1188774515)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    166,
    54286,
    'Robert Ludlum',
    1188774524)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    167,
    104,
    'test tag',
    1154718872)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    177,
    115617,
    'feel-good',
    1435523876)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    177,
    115617,
    'fun family movie',
    1435523876)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    177,
    115617,
    'very funny',
    1435523876)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    184,
    2579,
    'black and white',
    1537094307)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    184,
    2579,
    'Christopher Nolan',
    1537094326)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    184,
    2579,
    'directorial debut',
    1537094323)
;
INSERT INTO tags (user_id, movie_id, tag, timestamp) VALUES (
    184,
    2579,
    'mindfuck',
    1537094375)
;

-- Create indexes for optimization
CREATE INDEX idx_ratings_user_id ON ratings(user_id);
CREATE INDEX idx_ratings_movie_id ON ratings(movie_id);
CREATE INDEX idx_tags_user_id ON tags(user_id);
CREATE INDEX idx_tags_movie_id ON tags(movie_id);
CREATE INDEX idx_movies_year ON movies(year);

-- Script completed