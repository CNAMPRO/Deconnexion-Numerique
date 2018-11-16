

## Orchestre
### Démonstration
<img  src="https://i.imgur.com/Wb0MZAa.jpg" alt="drawing" width="400" height="200"/>

### Histoire
Etant atteint de la synesthésie, Bruno perçoit la musique avec une disposition spatiale particulière. Passionné d'opéra depuis tout petit il passe beaucoup de temps dans les opéras, petit à petit il prit l'habitude de visualiser toutes les musiques qu'il entend dans sa tête sous une forme d'orchestre ce qui lui permet de se sentir "chez lui" et d'être rassuré de manière immédiate. C'est donc ce que veut transmettre Bruno à travers cette scène sortie tout droit de sa tête.

### Fonctionnement de la scene

La scène est une représentation d'un orchestre. On peut apercevoir un chef orchestre se mouvoir en fonction de la musique et d'orchestrer les autres musiciens de gauche à droite, du grave à l'aigu.

### Probleme et resolution
- Conception des musiciens
  - Problème : Mouvoir les "musiciens" en fonction de si la musique est aigu ou grave
  - Résolution : Activation des musiciens selon le chef d'orchestre. Grossissement des musiciens selon le volume de la musique
- Conception du chef d'orchestre
  - Problème : Pointer les bons musiciens au bon moment
  - Résolution : Trait qui part du chef d'orchestre et qui va vers les musiciens qui doivent s'activer.

## Scene Leaf
<img  src="https://i.imgur.com/U1pOpJg.jpg" alt="drawing" width="400" height="200"/>

 ### Histoire de la scene
   Chacun a pu être émue des couleurs que la nature nous donne en un temps d'automne. Ici, la musique produit du vent qui pousse ces feuilles de différentes couleurs. Bruno voit ici un retour vers la nature. Car, dans la nature , la vrai, on ne peut être connecté à la société d'aujourd'hui ,le calme y est.


 ### Fonctionnement de la scene  
 Pour lancer la scène Leaf vous devez dans un premier temps, choisir une musique. Grace à la lecture de cette musique, nous allons pouvoir effectuer des calculs sur l'amplitude du son, les basses, les aiguës etc ... 
 Grâce à une règle de trois, chacun de ces paramètre vont nous donner la force X et Y du vent. Cette force donnera une accélération à la feuille ( a = ax + ay équation de physique).Chaque feuille ont une couleur et chaque couleur représentent les bases , les aigues et le milieux. Le vent et l'accélération peuvent être simuler grâce à la fonction noise. Puis une règle de trois (fonction map) entre cette    fonction et la force du vent trouver avec la musique donnera une accélération a cette feuille. De plus, quelques feuilles seront en       rotation. Nous pouvons aussi simuler la poussière que le vent peut faire grâce au ligne qui accompagne cette feuille.

 ### Probleme et solution.
  - Le premier problème que nous avons rencontré fut comment faire pour avoir la sensation d'avoir des feuilles pousser par le vent. La solution à ce problème fut l'utilisation e particule. Les particules ici, sont les feuilles, et le vent est l'accélération de ces particules. 
  - Le deuxième problème, fut de savoir comment simuler le vent. La meilleure chose à faire et d'utiliser la fonction noise, et de faire une règle de trois entre ce que renvoient la fonction noise et ce que nous renvois les résultats de la fft de la music. 
  - Le troisième problème fut la simulation des traits de poussière fait par le vent. Nous avons donc utilisé une liste qui garde les positions de la feuille au fils de son emplacement et d'afficher plusieurs petite ligne avec différente opacités.

## Fontaine

### Photo de la scène
Version 1
<img  src="https://i.imgur.com/dTVHF1g.png" alt="drawing" width="400" height="200"/>
Version 2
<img  src="https://i.imgur.com/lQ5bMvM.png" alt="drawing" width="400" height="200"/>
Version 3 
<img  src="https://i.imgur.com/O6VRuGJ.png" alt="drawing" width="400" height="200"/>


### Histoire de la scène

* La fontaine rappelle la fontaine du Bellagio de Las Vegas ou encore La Féerie des Eaux en France. 
* La fontaine produit un spectacle unique en rythme la musique et berce Bruno qui aime se détendre en écoutant la musique. Ces spectacles permettent à Bruno de se laisse emmener par la valse des jets de la fontaine qui le déconnecte et le berce en écoutant ses musiques favorites.

### Fonctionnement de la scène

La scène Fontaine, représente une fontaine avec 6 jets qui chacun représentent leur groupe de fréquence.
Les jets du bas de la fontaine bougent en fonction des fréquences graves de la musique le jet du centre représente les hautes fréquences et les jets du milieu les fréquences moyennes.
L'intensité des couleurs change également selon la puissance des notes de la musique

### Problème et résolution

- concevoir une fontaine 
  - Problème : représenter une fontaine dans processing 
  - Solution : adaptation d'une librairie de particule afin de reproduire les jets de la fontaine
  
- concevoir le ballet de la fontaine
  - Problème : Produire un spectacle en lien avec la musique
  - Solution : Utilisation d'une librairie FFT pour jouer modifier la vitesse et l'accélération des particules avec les groupes de fréquences
  
 - Ajouter des couleurs au jet de particule
  - Probleme : afficher un groupe de couleur pour un groupe de fréquence
  - Solution : realisation d'un fonction de changement de couleur en fonction du groupe de fréquence
  
- Problemes
  - Optimisation des particules des font lagger l'affichage des jets
    - Lors de la Version 2 de la Fontaine l'objectif était de mieu representer les jets d'eau par des lignes, ce qui n'a pas été possible car l'affichage de ces particules produisaient trop de latence.
    - J'ai essayer plusieur optimisations, allocation de mémoire à l'instanciation des particule pour réserver la mémoire.
    - Utilisation d'un index pour afficher un nombre de particule limité. Réduction du nombre de particule généré.
    - Destruction des particules qui sontent de l'écran.
    - Je suis donc revenu à un affichage d'elipse simple qui prend beaucoup mois de ressources
    