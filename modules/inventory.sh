#!/bin/bash
# Module inventory : affiche les infos système

# Utilisation de variables pour rendre le code plus clair
host=$(hostname)
user=$(whoami)
date=$(date)
memory=$(free -h | grep Mem)
disk=$(df -h / | tail -1)

# Affichage 
echo "===== INVENTAIRE SYSTEME ====="
echo "Date : $date"
echo "Nom de la machine : $host"
echo "Utilisateur : $user"
echo "Système : $(uname -a)"
echo "Mémoire RAM : $memory"
echo "Espace disque : $disk"

