#!/bin/bash

CONFIG_LOCATION="../config/application.yml"
JAR_FILE="../build/app-service.jar"
PORT=8080

Nohup java -jar -Dspring.config.location="$CONFIG_LOCATION" "$JAR_FILE" &

sleep 5

PID=$(lsof -ti:$PORT)

if [ -z "$PID" ]; then
    echo "Aucun processus n'utilise le port $PORT."
else
    echo "Le processus avec le PID $PID utilise le port $PORT. Il va être terminé."
    kill $PID
fi
