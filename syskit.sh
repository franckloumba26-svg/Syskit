#!/bin/bash
# Script principal Syskit

# Affiche un message d'aide
usage() {
    echo "utilisation : $0 {inventory|backup|cleanup|report} [options]"
    exit 1 
} 

# vérifie qu'il y a au moins un argument
if [ $# -lt 1 ]; then
	usage
fi 

# Récupère la commande
cmd=$1
shift

# Appelle le module correspondant
case $cmd in 
	inventory)
           ./modules/inventory.sh
	   ;;
	backup)
             if [ $# -lt 1 ]; then
		 echo "Erreur : précise le dossier à nettoyer."
		 usage
	     fi
	     ./modules/cleanup.sh "$1"
	     ;;
     report)
	     ./modules/report.sh
	     ;;
     *)
	     usage
	     ;;
esac

