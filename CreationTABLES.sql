CREATE TABLE WinAcademy;
CREATE TABLE College(
    college_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    college_Name varchar(255) NOT NULL,
    siteinternet varchar(255) NOT NULL
);
CREATE TABLE Evaluation (
    ev_id int NOT NULL PRIMARY KEY,   
    Nom varchar(255) NOT NULL,
    coefficient int NOT NULL 
 
);
CREATE TABLE Departement (
    departement_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom varchar(255) NOT NULL,
    college int NOT NULL,
responsable int NULL,
    FOREIGN KEY (college) REFERENCES College(college_id)
    FOREIGN KEY (responsable) REFERENCES Enseignant(users_id)
);
CREATE TABLE Role(
 role_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nom varchar(255) NOT NULL
);
CREATE TABLE Users(
    users_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    lastName varchar(255) NOT NULL,
    firstName varchar(255) NOT NULL,
    phone varchar(255),
    email varchar(255) NOT NULL,
    pASSWORD varchar(255) NOT NULL,
    role int,
    FOREIGN KEY (role) REFERENCES Role(role_id)
);
CREATE TABLE Etudiant (
users_id int NOT NULL,
dateEntree DATE NOT NULL,
PRIMARY KEY (users_id),
FOREIGN KEY (users_id) REFERENCES Users(users_id)
);

CREATE TABLE Salle(
  salle_id int(11) NOT NULL PRIMARY KEY,
  salle_numero varchar(15) NOT NULL
);
CREATE TABLE Matiere (
  matiere_id int(11) NOT NULL PRIMARY KEY,
  matiere_title varchar(100) NOT NULL,
  salle_id int DEFAULT NULL,
   FOREIGN KEY (salle_id) REFERENCES Salle(salle_id)
);

CREATE TABLE Enseignant (
    user_id int NOT NULL PRIMARY KEY,
    dateFonction DATE NOT NULL ,
    matiere int NOT NULL ,
    departement int NOT NULL ,
    FOREIGN KEY (user_id) REFERENCES users(users_id),
    FOREIGN KEY (matiere) REFERENCES Matiere(matiere_id),
    FOREIGN KEY (departement) REFERENCES Departement(departement_id)
);
CREATE TABLE NOTE (
etudiant_id int NOT NULL,
matiere_id int NOT NULL,
note FLOAT,
evaluation int NOT NULL,
PRIMARY KEY (etudiant_id,matiere_id),
FOREIGN KEY (etudiant_id) REFERENCES Etudiant(users_id),
FOREIGN KEY (evaluation) REFERENCES Evaluation(ev_id),
FOREIGN KEY (matiere_id) REFERENCES Matiere(matiere_id)
);
