CREATE TABLE animal (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    espece VARCHAR(50),
    age INT,
    couleur VARCHAR(30)
);

INSERT INTO animal (nom, espece, age, couleur) VALUES
('Whiskers', 'Chat', 3, 'Noir'),
('Fluffy', 'Chien', 5, 'Blanc'),
('Tiger', 'Chat', 2, 'Rayé');