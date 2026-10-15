# Journal de confrontation au LLM

## Informations générales
- **Outil utilisé :** Gemini et ChatGPT (modèle GPT-6) 
- **Date :** 14/10/2026
- Le LLM a reçu uniquement le nom du langage (Befunge) et le contenu exact de notre fichier `SPEC.md`. Il n'a jamais vu le code source `p.bf`.
- Aucun cas de test n'a été fourni au LLM dans le prompt initial. 


## Proposition `p1.bf` avec Gemini 

### Prompt envoyé au LLM :
```
Fait moi le programme en befunge suivant 
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
- La chaîne peut être vide."
```

### Réponse du LLM :
Le LLM a généré le programme stocké dans `llm/p1.bf`.

### Résultat des tests avec `./run.sh llm/p1.bf` :
- Test 01 : échec
- Test 02 : échec
- Test 03 : échec
Dans les 3 cas le programme n'a rien sorti. 

## Proposition `p2.bf` avec Chat GPT 

### Prompt envoyé au LLM :
```
Fait moi le programme en befunge suivant 
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
- La chaîne peut être vide."
```

### Réponse du LLM :
Le LLM a généré le programme stocké dans `llm/p2.bf`.

### Résultat des tests avec `./run.sh llm/p2.bf` :
- Test 01 : échec 
- Test 02 : échec
- Test 03 : échec
Dans les 3 cas le programme n'a rien sorti. 
