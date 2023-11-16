create database peoplepertask;
use peoplepertask;


CREATE TABLE Users (
  ID int primary key auto_increment ,
  Name_user varchar(255),
  Password_user varchar(255),
  email varchar(355),
  birthday varchar(255)
);

/*------insert into users tables------ */

INSERT INTO Users (Name_user, Password_user, email, birthday) 
VALUES 
('Ahmed Hassan', 'ahmedpass123', 'ahmed.h@example.com', '1992-07-20'),
('Fatima Zahra', 'fatimapass456', 'fatima.z@example.com', '1988-04-12'),
('Youssef Ali', 'youssefpass789', 'youssef.a@example.com', '1995-10-05'),
('Nora Amrani', 'norapass321', 'nora.a@example.com', '1990-12-30'),
('Mehdi Belhaj', 'mehdipass654', 'mehdi.b@example.com', '1985-09-18');


CREATE TABLE Freelances (
  ID int primary key auto_increment,
  Name_freelance varchar(255),
  Skill varchar(255),
  ID_user int,
  foreign key(ID_User) references Users(ID)
);
/*------insert into freelances tables------ */
INSERT INTO Freelances (Name_freelance, Skill, ID_user) 
VALUES 
('Ali Hassan', 'Web Development', 1),
('Sara Ahmed', 'Graphic Design', 2),
('Karim Amrani', 'Content Writing', 3),
('Yasmin Zouhair', 'Digital Marketing', 4),
('Rachid Belhaj', 'Data Analysis', 5);

create TABLE Feedback (
	ID int PRIMARY KEY auto_increment ,
	feedback_Message varchar(255),
	ID_User int,
    foreign key (ID_User) references Users(ID)
);
/*------insert into feedback tables------ */
INSERT INTO Feedback (feedback_Message, ID_User)
VALUES 
('Great work, very satisfied!', 1),
('Excellent communication skills.', 2),
('Highly recommended, good job!', 3),
('Impressive work, exceeded expectations.', 4),
('Timely delivery and quality work.', 5);

CREATE TABLE Categories (
  ID  int PRIMARY KEY auto_increment ,
  Name_categorie varchar(255)
);
insert into categories(Name_categorie) 
VALUES ('Web Development'),('Graphic Design'),('Content Writing'),('Digital Marketing'),('Data Analysis');
/*------insert into feedback tables------ */

CREATE TABLE Sous_Categories (
  ID int PRIMARY KEY auto_increment,
  Name_categories varchar(255),
  ID_Categorie int,
  FOREIGN KEY (ID_Categorie) REFERENCES Categories(ID)
);
/*------insert into Sous_Categories tables------ */
INSERT INTO Sous_Categories (Name_categories, ID_Categorie)
VALUES 
('Front-end Development', 1),
('UI/UX Design', 2), 
('Copywriting', 3), 
('SEO', 4), 
('Data Visualization', 5); 

create TABLE Offres (
  ID_Offre int PRIMARY KEY auto_increment,
  Price int,
  DeadLine date,
  ID_Freelance int,
  ID_Project int,
  FOREIGN KEY (ID_Project) REFERENCES Projets(ID),
  FOREIGN KEY (ID_Freelance) REFERENCES Freelances(ID)
);
INSERT INTO Offres (Price, DeadLine, ID_Freelance, ID_Project)
VALUES 
(100, '2023-01-15', 1, 1),
(150, '2023-02-20', 2, 2),
(205, '2023-03-10', 3, 3),
(955, '2023-04-05', 4, 4),
(180, '2023-05-18', 5, 5);

CREATE TABLE Projets (
  ID int primary key auto_increment ,
  Title varchar(255),
  Description_project varchar(355),
  ID_User int,
  ID_Categorie int,
  ID_sous_Categorie int,
  foreign key (ID_User) references Users(ID),
  FOREIGN KEY (ID_Categorie) REFERENCES Categories(ID),
  FOREIGN KEY (ID_sous_Categorie) REFERENCES Sous_Categories(ID)
);

INSERT INTO Projets (Title, Description_project, ID_User, ID_Categorie, ID_sous_Categorie)
VALUES 
('Website Development', 'Building an e-commerce website', 1, 1, 1),
('Logo Design', 'Creating a brand logo', 2, 2, 2),
('Content Writing for Blog', 'Writing articles for a blog', 3, 3, 3),
('Digital Marketing Campaign', 'Running a social media campaign', 4, 4, 4),
('Data Analysis for Sales', 'Analyzing sales data for insights', 5, 5, 5);