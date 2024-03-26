#!/bin/bash

# Définition des variables
CONFIG_LOCATION="../config/application.yml"
JAR_FILE="../build/app-service.jar"

# Exécution de la commande avec les variables
java -jar -Dspring.config.location="$CONFIG_LOCATION" "$JAR_FILE"
