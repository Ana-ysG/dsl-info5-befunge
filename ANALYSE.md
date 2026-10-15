# Analyse des résultats de la confrontation

## 1. Analyse Sémantique
### Proposition p1
La proposition `p1.bf` du LLM n'a pas réussi à passer les tests. 

Befunge est un langage bidimensionnel où le flux d'exécution dépend de pointeurs de direction (`>`, `<`, `^`, `v`) et d'une pile globale. Les LLM peinent souvent à maintenir mentalement la grille 2D et la structure de la pile sur plusieurs lignes. Dans sa proposition `p1.bf`, le LLM s'est trompé dans la position du `<` sur la première ligne qui n'est pas alignée sur la position du `^` de la ligne 4. Il a aussi placé des ---, souvent utilisé pour représenter les espaces vides. 
De plus le Befunge est un langage très sensible, les commandes ne peuvents pas être choisies aléatoirement sans créer beaucoup d'erreurs. De nombreuses erreur ont ainsi été introduite, notamment à la ligne 2 où il faudrait un `#` avant le `@`, sans celui là le programme prend fin avant de pouvoir faire la première comparaison. Il y a aussi d'autres choix que je ne comprend pas tel que l'utilisation des `&` et du `"0" +` qui ne me semble pas nécéssaire. 

  ### Proposition p2
La proposition `p2.bf` du LLM n'a pas réussi à passer les tests. 

Similairement à la propostion p1 le LLM à eu des dificulté avec la direction du flux. Dans sa proposition `p2.bf`, le LLM n'a jamais rediriger le flux d'exécution, ne premettant pas d'avoir de boucle. Encore une fois la précision nécessaire pour coder en Befunge fait défaut au LLM, en effet le `_` renvoi le flux dans le mauvais sens mettant fin au programme imédiatement. Même sans ce problème la ligne se finie avec un `@` qui mettrait fin a programme après la première comparaison, de plus il utilise à la fois `.` et `,` pour l'affichange alors que juste `.` est nécéssaire. 


## 2. Analyse Syntaxique

- **Code p :** Une simple boucle qui regarde si le string est fini ou non, envoie vers le comparateur et ramène le flux au début du code.
- **Code p1 :** Le LLM a tenté de créer un circuit fermé, en utilisant séparant la validation pour continuer le code de la comparaison. Il a aussi choisi de mettre des espace entre tous les caractères ce qui fontionne sans problème mais n'est pas un choix que j'ai fait. 
- **Code p2 :** Une ligne unique. Le LLM a échoué à utiliser la 2D et a tenté d'écrire le programme de manière linéaire, ce qui ne permet pas de boucler correctement sur une chaîne.

Je préfére nettement mon code a ceux des LLM. Ils n'ont pas résussi à reproduire la logique complexe du langage et ont au contraire juste repliqué des motifs superficiels qui ne permet pas de créer un code fonctionel. 


## 3. Conclusion et Apprentissage
En conclusion, cette expérience met en lumière la distance entre la simplicité apparente d'un calcul et la complexité réelle du langage. Mon code ne prend que trois lignes, mais il m'a demandé des heures de conception parce que Befunge exige une grande précision et une vraie compréhension de la navigation dans l'espace. C'est précisément ce que les LLM n'ont pas su imiter, on voit bien là leurs limites. Ils se contentent de reproduire des patterns de surface sans véritable compréhension logique, ce qui les bloque complètement face à un langage aussi sensible et géométrique que Befunge.