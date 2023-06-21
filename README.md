# Bac-LXP

Une application pour gérer les inscriptions d'élèves au bac au Lycée Expérimental.

## Installation
Pour installer l'application sur un OS Linux dérivé de Debian (Debian, Ubuntu, Mint...), lancer la commande suivante dans un terminal (CTRL+ALT+T) :

```bash
wget -q -O - "https://raw.githubusercontent.com/Lycee-Experimental/bac-LXP/main/install.sh" | bash
```
bac-LXP devrait alors être parmis les applications que se trouvent dans le menu de démarrage.

## Fonctionnalités

### De la base élève à l'inscription sur Cyclades

- Importer l'export excel complet de la base Siecle au format zip : `ExportExcel_ElevesComplete.zip`

- Sélectionner le niveau à exporter (1ère ou terminale)

- Vérifier les Spé et langues vivantes. En cas d'erreur, modifier la base Siecle et la ré-exporter.

- Sélectionner les élèves qui passent réellement le bac (CTR + Clic).

- Cliquer sur exporter pour générer le fichier csv à importer dans Cyclades.

### Génération des Livrets scolaires depuis Parcoursup

- Entrer le mot de passe Parcroursup de l'établissement

- Cliquer sur "Obtenir les élèves depuis Parcoursup"

- Renseigner les numéros d'anonymats des candidats à exporter (voir avec la DEC) 

- Sélectionner les élèves pour lesquels générer le livret scolaire

- Cliquer sur "Générer les livrets"
