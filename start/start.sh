#!/bin/bash

CONFIG_LOCATION="../config/application.yml"
JAR_FILE="../build/app-service.jar"
PORT=8080

nohup java -jar -Dspring.config.location="$CONFIG_LOCATION" "$JAR_FILE"
