------------------------User-----------------
SELECT * FROM User LIMIT 10;
---Select user by role id
SELECT * FROM User WHERE role=6;
---Select user by role name
SELECT * FROM User as u INNER JOIN Role as r on u.role=r.role_id WHERE r.role_title='Etudiant';
SELECT * FROM User as u INNER JOIN Role as r on u.role=r.role_id WHERE r.role_title='Admin';
SELECT * FROM User as u INNER JOIN Role as r on u.role=r.role_id WHERE r.role_title='Directeur';
SELECT * FROM User as u INNER JOIN Role as r on u.role=r.role_id WHERE r.role_title='Enseignant';
---Select user by firstName starting with A
SELECT firstName, lastName FROM User WHERE firstName LIKE 'A%' ;
---Select user by firstName finishing with A
SELECT firstName, lastName WHERE firstName LIKE '%A';
---order user by firstName  ASC
SELECT * FROM User ORDER BY firstName ;
---order user by firstName  DESC
SELECT * FROM User ORDER BY firstName DESC;
-------------------------Etudiant------------------------
SELECT * FROM Etudiant;
-- SELECT Etudiant by dateEntree
SELECT * FROM Etudiant WHERE dateEntree='2021-06-11';
-- SELECT Etudiant dateEntree by id
SELECT dateEntree FROM Etudiant WHERE user_id=1;
-- Select  user information de tous les etudiants
SELECT u.*, et.dateEntree FROM User as u INNER JOIN Etudiant as et on u.user_id=et.user_id  ;
-- Select etudiant user information by Id
SELECT u.*, et.dateEntree FROM User as u INNER JOIN Etudiant as et on u.user_id=et.user_id WHERE et.user_id=10;  ;

--------------------------Enseignant----------------------------------
SELECT * FROM Enseignant
-- Select  user information of all enseignant
SELECT * FROM User as u INNER JOIN Enseignant as ens on u.user_id=ens.user_id  ;
---Select enseignant by matiere id
SELECT * FROM Enseignant WHERE matiere=2;
---Select enseignant by matiere title
SELECT * FROM Enseignant as ens INNER JOIN Matiere as m on ens.matiere=m.matiere_id WHERE matiere_title='Arabic';
-- SELECT enseignants whith no matiere
SELECT * FROM Enseignant WHERE matiere IS NULL
-- SELECT the count of  enseignants whith  matiere
SELECT COUNT(*) as 'Enseignant with matiere' FROM Enseignant WHERE matiere IS NOT NULL
--Select the number of enseignant in every matiere
SELECT COUNT(*) as 'nomber of Enseignant',m.matiere_title FROM Enseignant as ens INNER JOIN Matiere as m on ens.matiere=m.matiere_id
FROM Enseignant GROUP BY matiere

---------------------------college-----------------------------
SELECT TOP 3 * FROM College;
--Colleges without siteinternet
SELECT * FROM College WHERE siteinternet IS NULL
--College starting with U
SELECT * FROM College WHERE college_name LIKE 'A%';
--Count departement in every college
SELECT COUNT(departement_id) as 'Nomber of departements',college_Name FROM Departement as d INNER JOIN College as c ON d.college=c.college_id GROUP BY d.college
-------------------------------note*/
SELECT * FROM Note
---moyenne par matiere
SELECT AVG(note) as 'moyenne',matiere_title FROM Note as n INNER JOIN Matiere as m on n.matiere_id=m.matiere_id GROUP BY n.matiere_id
---moyenne par departement
SELECT AVG(note) as 'moyenne',d.nom FROM Note as n INNER JOIN Matiere as m on n.matiere_id=m.matiere_id INNER JOIN Enseignant as ens ON m.matiere_id=ens.matiere INNER JOIN Departement as d on ens.departement=d.departement_id  GROUP BY d.departement_id
--moyenne d'un etudiant
SELECT AVG(note) as 'moyenne' FROM Note WHERE etudiant_id=14
--Matiere dont un etudiant n'est pas noté
SELECT m.matiere_title FROM Note AS n INNER JOIN Matiere AS m ON n.matiere_id=m.matiere_id WHERE m.matiere_id NOT IN (SELECT matiere_id FROM Note WHERE etudiant_id=14)
--note d'un etudiant appartenant à un intervalle
SELECT *  FROM Note WHERE etudiant_id=14 AND note BETWEEN 5 AND 11
-- note maximum d'un etudiant
SELECT MAX(note)  FROM Note WHERE etudiant_id=14
-- note min d'un etudiant
SELECT MIN(note)  FROM Note WHERE etudiant_id=14
---------------------evaluation----------------
SELECT * FROM Evaluation
---Select nb evalurion dans chaque matiere
SELECT COUNT(e.ev_id) As 'Nombre evaluations',matiere_id FROM Evaluation as e INNER JOIN Note as n on e.ev_id=n.ev_id GROUP BY matiere_id
------------------------departemant-------------------------------------------
SELECT * FROM Departemant
-------------------------matiere-----------------
SELECT * FROM Matiere
---Les noms des matiere sans repitition
SELECT DISTINCT matiere_title FROM Matiere;
---Nombre des differentes matieres
SELECT COUNT(DISTINCT matiere_title) FROM Matiere;

---Matiere sans Salle
SELECT * FROM Matiere WHERE salle IS NULL
----Select les matiere d'un departement
SELECT m.*,d.departement_id FROM Matiere as m INNER JOIN Enseignant as ens ON m.matiere_id = ens.matiere INNER JOIN Departement as d ON d.departement_id = ens.departement WHERE d.departement_id=6
--Count matiere de chaque departement
SELECT COUNT(m.matiere_id) AS 'nombre des matieres',d.departement_id FROM Matiere as m INNER JOIN Enseignant as ens ON m.matiere_id = ens.matiere INNER JOIN Departement as d ON d.departement_id = ens.departement GROUP BY departement_id
-----------------------salle-----------------
SELECT * FROM Salle
-------------------------role*/
SELECT * FROM Role
--Display all roles concatinated with separator
SELECT CONCAT_WS('-',role_id,role_title) FROM Role
