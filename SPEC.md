# Spécification: Détection du caractère 'a'

## Description
Le programme lit une chaîne de caractères fournie jusqu'à la fin de la chaîne (code ASCII 10). Il doit identifier toutes les occurrences du caractère minuscule 'a' (code ASCII 97) et afficher leurs positions. Tout caractère n'étant pas 'a' prend la valeur 0 et les 'a' prennent la valeur 1.

## Entrée (Format)
- Une unique ligne de texte contenant des caractères alphanumériques, des espaces ou de la ponctuation. Se finie par un saut de ligne. 
- Exemple : `banana`

## Sortie (Format)
- Suite binaire correspondant à la positions des caractères 'a' de la chaîne.
- Exemple pour `banana` : `010101`

## Cas particuliers
- Si la chaîne ne contient aucun 'a', le programme ne renvoie que des 0.
- La recherche est sensible à la casse : seule la lettre minuscule 'a' est recherchée (le 'A' majuscule est ignoré).
- La chaîne peut être vide.