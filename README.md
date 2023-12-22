- Pour lancer le projet en utilisant docker


pour lancer le projet docker, lancer d'abord docker, puis lancer la commande:

docker build -t my-hugo-site .

et ensuite le commande : 

docker run -p 1313:1313 my-hugo-site


- Pour lancer le projet en utilisant hugo : 

pour lancer le projet ouvrir powershel et non pas windows powershell
aller dans le dossier du projet hugo

telecharger le theme blowfish avec la commande suivante : 

git submodule add -b main https://github.com/nunocoracao/blowfish.git themes/blowfish

puis pour lancer le sire lancer la commander : 

hugo server 

