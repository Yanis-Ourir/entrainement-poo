# entrainement-poo

# Exercices de Programmation Orientée Objet (POO)

## Exercice 1 - Gestion d'une classe Personne

### Objectif
Créer une classe `Personne` avec des propriétés privées pour le nom, le prénom et l'âge, utilisant des getters pour un accès sécurisé. Ajouter une méthode `presentation()` pour afficher les informations de la personne. 
Ensuite, créer une classe `Etudiant` héritant de `Personne` avec une nouvelle propriété étude et deux nouvelles méthodes :
`setEtude()` pour affecter une valeur à la propriété étude.
`getEtude()` pour récupérer les informations spécifiques à ses études.
Essayer d'instancier plusieurs étudiants. 

### Principes de POO utilisés
- **Encapsulation:** Utilisation de propriétés privées et getter pour afficher les propriétés de la classe.
- **Héritage:** Création d'une classe dérivée (`Etudiant`) qui hérite des caractéristiques de la classe parente (`Personne`).

### Exemple d'utilisation
```php
// Instanciation d'un objet Etudiant
$etudiant = new Etudiant('John', 'Doe', 20);

// Appel de la méthode presentation() de la classe Etudiant
echo $etudiant->presentation(); // Affiche "Je m'appelle John Doe et j'ai 20 ans."
$etudiant->setEtude('Informatique'); // La valeur de la propriété étude devient "Informatique"
echo $etudiant->infoEtude(); // Affiche "John Doe étudie en Informatique"
```

# Exercice 2 - Gestion d'une classe Véhicule

## Objectif
Créer une classe `Véhicule` avec une propriété privée `marque` et un constructeur pour initialiser cette propriété. Ensuite, créer deux classes `Voiture` et `Moto` héritant de `Véhicule`. Ajouter une méthode `afficherMarque()` pour afficher la marque du véhicule, utilisant la méthode de la classe parente pour éviter la redondance.

## Principes de POO utilisés
- **Encapsulation:** Utilisation de propriétés privées pour encapsuler les données de la classe. (Regroupement des propriétés et des méthodes + utilisation des getters & setters pour contrôler les propriétés de l'objet)
- **Héritage:** Création de classes dérivées (`Voiture` et `Moto`) qui héritent des propriétés et méthodes de la classe parente (`Véhicule`).

## Exemple d'utilisation
```php
// Instanciation d'un objet Voiture
$voiture = new Voiture('Toyota');

// Appel de la méthode afficherMarque() de la classe Voiture
echo $voiture->afficherMarque(); // Affiche "Marque du véhicule : Toyota"

// Instanciation d'un objet Moto 
$moto = new Moto('Yamaha');

// Appel de la méthode afficherMarque() de la classe Moto
echo $moto->afficherMarque(); // Affiche "Marque du véhicule : Yamaha"
``` 

