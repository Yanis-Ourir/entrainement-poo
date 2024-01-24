# entrainement-poo

# Exercices de Programmation Orientée Objet (POO)

## Exercice 1 - Gestion d'une classe Personne

### Objectif
Créer une classe `Personne` avec des propriétés privées pour le nom, le prénom et l'âge, utilisant des getters pour un accès sécurisé. Ajouter une méthode `presentation()` pour afficher les informations de la personne. 
Ensuite, créer une classe `Etudiant` héritant de `Personne` avec une nouvelle propriété étude et deux nouvelles méthodes :  
- `setEtude()` pour affecter une valeur à la propriété étude.
- `getEtude()` pour récupérer les informations spécifiques à ses études.

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
## Exercice 3 - Gestion d'une classe Cat

**/!\ Télécharger bien le fichier SQL fourni plus haut ! Et importer le dans une BDD créée au préalable. !**

### Objectif

Créer une classe `Cat` avec des propriétés privées pour le nom, l'espèce et l'âge, utilisant des getters et des setters pour un accès sécurisé. Ajouter une méthode `presentation()` pour afficher les informations du chat.

Ensuite, créer une classe `CatManager` qui va s'occuper des requêtes SQL, avec comme propriété votre base de données. Cette classe possède deux méthodes :

- `add()` qui prend pour paramètre un objet `Cat` et qui va l'insérer dans votre BDD.
- `findAllCat()` qui va faire une requête SQL pour aller chercher tous vos chats et qui va retourner un tableau d'objet `Cat`.

Utiliser également l'hydratation en SQL pour stocker quelques animaux dans une base de données appelée "animal_cat". La table "cat" doit avoir les colonnes suivantes : id (clé primaire), nom, espece, age, couleur.

### Principes de POO utilisés

- Encapsulation: Utilisation de propriétés privées et getter pour afficher les propriétés de la classe.
- Hydratation en SQL: Pour récupérer nos données dans la BDD et les afficher.

### Exemple d'utilisation en PHP

```php
// Utilisation des objets
$cat = new Cat('Rex', 'Chat', 3);
$cat->setCouleur('Noir');

echo $cat->presentation(); // Affiche "Je suis un Chat nommé Whiskers et j'ai 3 ans."
echo "Ma couleur est : " . $cat->getCouleur(); // Affiche "Ma couleur est : Noir"

$catManager = new CatManager($database);
$catManager->add($cat); // ajoute un chat à votre BDD

$catManager->findAllCat(); // une requête SQL qui vous retourne un tableau d'objet Cat ! ET NON UN ARRAY 
```

