#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Ce script doit être exécuté en tant que superutilisateur." 
  exit 1
fi

nomContt=$1
docker ps -a
docker stop $nomContt
docker rm $nomContt
docker volume ls
docker volume rm $nomContt



