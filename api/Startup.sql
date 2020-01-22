
Drop table games;
Create TABLE games(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    releaseDate DATE,
    genre varchar(100),
    onlineAvailability varchar(20),
    
    numberOfOnlinePlayers SMALLINT,
    averageUserScore SMALLINT,
    averageReviewerScore SMALLINT
    );
    
    INSERT INTO games(name, releaseDate, genre, onlineAvailability, numberOfOnlinePlayers, averageUserScore, averageReviewerScore)
    VALUES
    ("Spiderman", '2018-09-07', "Action Adventure", "Offline", null, 86, 87),
    ("God Of War", '2018-04-20', "Action Adventure", "Offline", null, 91, 94),
    ("Devil May Cry ", '2001-10-16', "Action Adventure", "Offline", null, 87, 94),
    ("Devil May Cry 2", '2003-01-25', "Action Adventure", "Offline", null, 69, 68),
    ("Devil May Cry 3: Dante's Awakening", '2005-03-01', "Action Adventure", "Offline", null, 92, 84),
    ("Devil May Cry 4", '2008-02-05', "Action Adventure", "Offline", null, 84, 84),
    ("Devil May Cry 5", '2019-08-03', "Action Adventure", "Online", 3, 84, 88),
    ("The Witcher 3", '2015-05-19', "Action RPG", "Offline", null, 92, 92),
    ("Dark Souls", '2011-10-04', "Action RPG", "Online", 4, 88, 89),
    ("Ratchet & Clank", '2002-11-04', "Action Platformer", "Offline", null, 89, 88),
    ("Ratchet & Clank 2", '2003-11-11', "Action Platformer", "Offline", null, 90, 90),
    ("Ratchet & Clank 3", '2004-11-03', "Action Platformer", "Online", 8, 91, 91),
    ("Call Of Duty Modern Warfare", '2007-11-05', "First Person Shooter", "Online", 18, 85, 94),
    ("Call Of Duty Modern Warfare 2", '2009-11-10', "First Person Shooter", "Online", 18, 65, 94),
    ("Call Of Duty Modern Warfare 3", '2011-11-08', "First Person Shooter", "Online", 18, 32, 88),
    ("Fifa Street", '2005-02-22', "Sports", "Offline", null, 80, 59),
    ("Need For Speed Underground", '2003-11-17', "Driving", "Offline", null, 87, 95),
    ("Need For Speed Underground 2", '2004-11-09', "Driving", "Offline", null, 86, 82),
    ("Need For Speed Most Wanted", '2005-11-15', "Driving", "Online", 4, 86, 82),
    ("Need For Speed Most Wanted", '2012-10-30', "Driving", "Online", 8, 59, 84),
    ("Metal Gear Solid", '1998-10-21', "Action Adventure", "Offline", null, 92, 94),
    ("Metal Gear Solid 2 Sons of Liberty", '2001-11-12', "Action Adventure", "Offline", null, 88, 96),
    ("Metal Gear Solid 3 Snake Eater", '2004-11-17', "Action Adventure", "Offline", null, 91, 91),
    ("Metal Gear Solid 4 Guns of the Patriots", '2008-05-12', "Action Adventure", "Online-Discontinued", 18, 88, 94),
    ("Metal Gear Solid V:  The Phantom Pain", '2015-09-01', "Modern Action Adventure", "Online", 16, 82, 93),
    ("Metal Gear Solid: Peace Walker", '2010-05-08', "Action Adventure", "Offline", null, 88, 89),
    ("Resident Evil 2", '1998-01-21', "Survival Horror", "Offline", null, 92, 89),
    ("Resident Evil 2", '2019-01-25', "Survival Horror", "Offline", null, 88, 91),
    ("Tekken 7", '2017-05-02', "Fighting", "Online", 8, 68, 82),
    ("Gran Turismo Sport", '2017-10-17', "Racing", "Online", 20, 61, 75),
    ("Horizon Zero Dawn", '2017-02-28', "Role-Playing", "Offline", null, 84, 89),
    ("Killzone", '2004-11-02', "First Person Shooter", "Online", 16, 73, 70),
    ("Killzone 2", '2009-02-27', "First Person Shooter", "Online", 32, 81, 91),
    ("Killzone 3", '2011-02-22', "First Person Shooter", "Online", 16, 81, 84),
    ("Yakuza 0", '2017-01-24', "Action Adventure", "Offline", null, 85, 85)

    ;
Create table users(
username varchar(100),
name varchar(100),
password varchar(100)
);
INSERT INTO users 
VALUES("cian browne", "cian", "1234"),
("JohnDoe", "John", "abcd"),
("JaneDoe", "Jane", "123"),
("JoeBloggs", "Joe", "abc"),
("MarySue", "Mary", "xyz"),
("JohnnyBravo", "Johnny", "Bravo"),
("BigDog", "Dog", "Alpha"),
("Brofessor", "Dom", "pump"),
("User1", "Tom", "password"),
("User2", "Joan", "MyPassword");
Select * from users;
        