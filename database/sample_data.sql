USE CentralizedCollegeDB;

INSERT INTO Department VALUES
(1,'CSE','Dr. Kumar'),
(2,'ECE','Dr. Priya');

INSERT INTO Student VALUES
(101,'Alice','2004-01-10','Female',1),
(102,'Bob','2004-02-15','Male',1),
(103,'Ram','2004-03-20','Male',2);

INSERT INTO Staff VALUES
(201,'Prof. Raj','M.Tech',1),
(202,'Prof. Meena','PhD',2);

INSERT INTO Course VALUES
(301,'DBMS',4,1),
(302,'Data Structures',4,1),
(303,'Digital Electronics',3,2);

INSERT INTO Marks VALUES
(101,301,85,'A'),
(102,301,78,'B'),
(103,303,90,'A');