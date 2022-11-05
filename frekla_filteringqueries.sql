SELECT CONCAT(ens.fname , ' '  ,ens.lname) AS "Full Name" , ens.email , ens.phone , ens.status , ens.role_id , ens.datefunction  ,  dep.name AS "dep_name" , col.name AS "col_name" FROM enseignants ens
JOIN departements dep ON  ens.departement_id = dep.id
JOIN college col ON col.numero = dep.college_id
WHERE col.name = 'Youcode youssoufia' AND dep.name = '1er anneeY';

SELECT CONCAT(etu.fname , ' '  ,etu.lname) AS "Full Student Name" , etu.email , etu.phone , etu.status , etu.role_id , etu.anneeentrer  ,  CONCAT(ens.fname , ' '  ,ens.lname) AS "Full Teahcer Name"  FROM etudiants etu
JOIN enseigner ense ON ense.etudiant_id  = etu.id
JOIN enseignants ens ON ense.enseignant_id = ens.id
WHERE ens.fname = 'youssef' AND ens.lname = 'ouadid' ;

SELECT mat.name FROM matiers mat
JOIN enseignants ens ON ens.matier_id = mat.id
WHERE ens.fname = 'youssef' AND ens.lname = 'ouadid' ;

SELECT CONCAT(ens.fname , ' '  ,ens.lname) AS "Full Name" FROM enseignants ens
JOIN responsable res ON res.enseignant_id = ens.id
JOIN departements dep ON dep.id = res.departement_id
WHERE dep.name = '1er anneeY' ;

SELECT AVG(note) AS "Moyenne" FROM evluation 
WHERE etudiant_id = 126;