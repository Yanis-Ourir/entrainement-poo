# entrainement-poo

# Exercices de Programmation Orientée Objet (POO)

## Exercice 1 - Gestion d'une classe Personne

### Objectif
Créer une classe `Personne` avec des propriétés privées pour le nom, le prénom et l'âge, utilisant des accesseurs pour un accès sécurisé. Ajouter une méthode `presentation()` pour afficher les informations de la personne. Ensuite, créer une classe `Etudiant` héritant de `Personne` avec une méthode `infoEtude()` pour inclure des informations spécifiques à son niveau d'études.

### Principes de POO utilisés
- **Encapsulation:** Utilisation de propriétés privées et getter & setter pour contrôler les propriétés de la classe.
- **Héritage:** Création d'une classe dérivée (`Etudiant`) qui hérite des caractéristiques de la classe parente (`Personne`).

### Exemple d'utilisation
```php
// Création d'un objet Etudiant
$etudiant = new Etudiant('John', 'Doe', 20, 'Informatique');

// Appel de la méthode presentation() de la classe Etudiant
echo $etudiant->presentation(); // Affiche "Je m'appelle John Doe et j'ai 20 ans. J'étudie en Informatique."
``` 
