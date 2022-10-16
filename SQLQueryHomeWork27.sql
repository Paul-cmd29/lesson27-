CREATE DATABASE Persons

CREATE TABLE PersonsNew
(
	Id INT IDENTITY,
	FirstName NVARCHAR(20) NOT NULL,
	SecondName NVARCHAR(20) NOT NULL,
	Age INT,
	Adress NVARCHAR(30),
	PhoneNumber VARCHAR(20) UNIQUE,
	Email VARCHAR(20) UNIQUE,
)
--Id should be assigned as PRIMARY KEY
ALTER TABLE PersonsNew 
ADD Gender NVARCHAR(200);
SELECT * FROM PersonsNew
WHERE Gender = Male

SELECT * FROM  PersonsNew 
WHERE Age > 18

SELECT * FROM  PersonsNew 
WHERE Adress IS NULL

UPDATE PersonsNew
SET Age += 1 

DELETE FROM PersonsNew
	WHERE Adress IS NULL
SELECT * FROM  PersonsNew 

SELECT COUNT(*) FROM PersonsNew

SELECT Age, COUNT(*) As AgeGroupBy
FROM PersonsNew
GROUP BY Age

--checked
