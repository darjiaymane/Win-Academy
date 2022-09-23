/* ############## College #################### */
/* Counting how many Colleges are they */
SELECT COUNT(college_id) AS 'Total_Colleges' FROM college ;
/* Ordering Colleges in ASC and DESC */
SELECT college_Name AS 'College_Names' FROM college ORDER BY college_Name ; /* Ascendant Order By Default*/
SELECT college_Name AS 'College_Names' FROM college ORDER BY college_Name DESC;  /* Descendant Order*/
/* Showing Websites */
SELECT college_Name , siteinternet AS 'SitesInternet' FROM college;
/* Selecting COllege data by id */
SELECT * FROM college WHERE college_id = 1 ; /* 1 for example */
/* Seleting College Name that a certain responsible belongs to ( Search by Responsible Name ) [ Example Explained with "Mohamed" name ]*/ 
SELECT college_Name FROM college WHERE college_id = (SELECT DISTINCT college_id FROM departement WHERE responsable_id = ( SELECT user_id FROM user WHERE firstName = "Mohamed" ));

/* ############## Departements #################### */
/* Selecting ALl Departements of All Colleges */
SELECT nom FROM departement ;
/* Selecting departements by College id */
SELECT nom FROM departement WHERE college_id = 2 ; /* 2 for example */

/* ############## Users #################### */
/* Browsing users by their roles */
SELECT CONCAT(lastName , " " ,firstName) AS "Full Name" , phone , email FROM user WHERE role = ( SELECT role_id FROM role WHERE role_title = "Etudiant" );
/* ############## Etudiant #################### */
/* Selecting a student by the entry date */
SELECT user.lastName , user.firstName , user.phone , user.email , etudiant.dateEntree FROM user INNER JOIN etudiant ON user.user_id = etudiant.user_id  WHERE etudiant.dateEntree = '2022-09-04' ;
SELECT user.lastName , user.firstName , user.phone , user.email , etudiant.dateEntree FROM user INNER JOIN etudiant ON user.user_id = etudiant.user_id  WHERE etudiant.dateEntree >= '2022-09-01' ;
SELECT user.lastName , user.firstName , user.phone , user.email , etudiant.dateEntree FROM user INNER JOIN etudiant ON user.user_id = etudiant.user_id  WHERE etudiant.dateEntree <= '2022-09-07' ;

/* 'M%'	Finds any values that start with "a" */
SELECT firstName FROM user WHERE firstName LIKE 'M%' ;
--  '%M'	Finds any values that end with "a"
SELECT firstName FROM user WHERE firstName LIKE '%M' ;
-- '%Mo%'  Finds any values that have "or" in any position
SELECT firstName FROM user WHERE firstName LIKE '%Mo%' ;

-- Same thing goes with Last Name 

--Select all the student in a school subject
SELECT * FROM etudiant INNER JOIN user ON user.user_id = etudiant.user_id INNER JOIN note ON user.user_id=note.etudiant_id WHERE matiere_id = (SELECT matiere_id FROM matiere WHERE matiere_title LIKE 'M%');

-- Select all the student who have more than the average mark
SELECT CONCAT(user.lastName , " " ,user.firstName) AS "Full Name" , note.note FROM user INNER JOIN note ON user.user_id = note.etudiant_id WHERE note >= 10 ;

-- SELECT a mark of a certain school subject of a student 
SELECT CONCAT(u.lastName , " " ,u.firstName) AS "Full Name" , n.note  
FROM user u INNER JOIN note n ON u.user_id = n.etudiant_id 
WHERE n.etudiant_id = ( SELECT user_id FROM user WHERE firstName = "Evyn" AND lastName = "O'Fairy" ) 
AND n.matiere_id = ( SELECT matiere_id FROM matiere WHERE matiere_title = "Programming" ) 
AND n.ev_id = ( SELECT ev_id FROM evaluation WHERE Nom_ev = "Evaluation 3" );