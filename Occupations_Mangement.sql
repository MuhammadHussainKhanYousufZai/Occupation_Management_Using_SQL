--Create Database
create database profession;

--Use Database
use profession;

--Create Table
create table OCCUPATIONS(
Name varchar(50),
Occupation varchar(20));

--Input the data in table
insert into dbo.OCCUPATIONS values
('Muhammad Hussain','Data Analyst'),
('Muhammad Sabih','Network Eng'),
('Syed Mujtaba','BDM'),
('Muhammad Ahsan','BDM'),
('Muhammad Salman','Network Eng'),
('Hassan','Software Eng'),
('Muhammad Bilal','Data Analyst'),
('Hassan Naushad','Data Analyst');

insert into dbo.OCCUPATIONS values('Muhammad Ali', 'Software Eng');

--Update the values in table
update dbo.OCCUPATIONS set Occupation = 'Software Eng' where Name = 'Hassan Naushad';

CREATE VIEW pq AS ( 
SELECT
	CASE WHEN occupation = 'Data Analyst' THEN name END AS 'Data Analyst',
	CASE WHEN occupation = 'BDM' THEN name END AS 'BDM',
	CASE WHEN occupation = 'Network Eng' THEN name END AS  'Network Eng',
	CASE WHEN occupation = 'Software Eng' THEN name END AS  'Software Eng',
	ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) as cr
FROM occupations);

select * from pq

SELECT MAX(Data Analyst) , MAX(BDM) , MAX(Network Eng) , MAX(Software Eng) 
FROM pq 
GROUP BY cr;

select * from  OCCUPATIONS;

