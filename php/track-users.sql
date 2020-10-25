CREATE TABLE IF NOT EXISTS data (
id INT NULL,
name VARCHAR(15) NULL,
gender VARCHAR(6) NULL,
username VARCHAR(6) NULL,
email VARCHAR(16) NULL,
password VARCHAR(11) NULL,
greeting VARCHAR(52) NULL,
date_create VARCHAR(5) NULL,
img VARCHAR(51) NULL
);

INSERT INTO data VALUES
(2,'Moran Sanchez','male','user2','user2@gmail.com',MD5('pass'),'Hello\, Moran Sanchez! You have 4 unread messages.',NOW(),'http://via.placeholder.com/400/963/fff/?text=user2'),
(3,'Bette Dorsey','female','user3','user3@gmail.com',MD5('pass'),'Hello\, Bette Dorsey! You have 10 unread messages.',NOW(),'http://via.placeholder.com/400/833/fff/?text=user3'),
(4,'Fry Stevens','male','user4','user4@gmail.com',MD5('pass'),'Hello\, Fry Stevens! You have 8 unread messages.',NOW(),'http://via.placeholder.com/400/913/fff/?text=user4'),
(5,'Chen Pate','male','user5','user5@gmail.com',MD5('pass'),'Hello\, Chen Pate! You have 10 unread messages.',NOW(),'http://via.placeholder.com/400/842/fff/?text=user5'),
(6,'Fuller James','male','user6','user6@gmail.com',MD5('pass'),'Hello\, Fuller James! You have 10 unread messages.',NOW(),'http://via.placeholder.com/400/822/fff/?text=user6'),
(7,'Bridget Stewart','female','user7','user7@gmail.com',MD5('pass'),'Hello\, Bridget Stewart! You have 6 unread messages.',NOW(),'http://via.placeholder.com/400/999/fff/?text=user7'),
(8,'Puckett Hogan','male','user8','user8@gmail.com',MD5('pass'),'Hello\, Puckett Hogan! You have 2 unread messages.',NOW(),'http://via.placeholder.com/400/914/fff/?text=user8'),
(9,'Mcneil Mckenzie','male','user9','user9@gmail.com',MD5('pass'),'Hello\, Mcneil Mckenzie! You have 7 unread messages.',NOW(),'http://via.placeholder.com/400/801/fff/?text=user9'),
(10,'Lacey Whitfield','female','user10','user10@gmail.com',MD5('pass'),'Hello\, Lacey Whitfield! You have 10 unread messages.',NOW(),'http://via.placeholder.com/400/828/fff/?text=user10'),
(11,'Cannon Knowles','male','user11','user11@gmail.com',MD5('pass'),'Hello\, Cannon Knowles! You have 1 unread messages.',NOW(),'http://via.placeholder.com/400/745/fff/?text=user11');