# Explication du programme p.bf

## Organisation de la mémoire et de la pile
Befunge utilise une grille bidimensionnelle et une pile de données. 
- On lit les caractères un par un depuis l'entrée.
- On compare chaque caractère lu avec le code ASCII de 'a' (97).

## Fonctionnement des boucles et du parcours
1. **Lecture :** Une instruction de lecture `~` récupère le caractère suivant.
2. **Condition d'arrêt :** Si la fin du flux (saut de ligne) est atteinte, le programme dévie son flux vers la sortie `@`.
3. **Comparaison :** On soustrait 97 au caractère lu pour tester l'égalité à zéro.
4. **Affichage :** Si le test est validé et le caractère est un 'a', on affiche 1, sinon 0, via l'instruction `.`.
5. **Boucle :** On redirige la lecture vers le début du code via les instruction `v`, `<`, `>` et `^`.  