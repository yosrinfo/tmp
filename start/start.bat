rem Définition des variables
set "CONFIG_LOCATION=..\config\application.yml"
set "JAR_FILE=..\build\app-service.jar"

rem Exécution de la commande avec les variables
java -jar -Dspring.config.location="%CONFIG_LOCATION%" "%JAR_FILE%"

endlocal
