## Pasos para generar un arquetipo:
1. Generar el arquetipo almacenado en el artifactory:
mvn archetype:generate -DarchetypeGroupId=com.imatia.basicproject -DarchetypeArtifactId=basicproject-archetype
-DarchetypeCalalog=https://artifactory.imatia.com/public-artifactory/simple/ontimize-release-opensource/

2. Entra en el directorio padre y ejecutar un install:
mvn install 

3. Arrancar la base de datos:
Entrar en la carpeta model y ejecutar el comando 'mvn exec:java -Prun_database'

4. Arrancar solo el servidor:
Entra en la carpeta boot y ejecutar el comando 'mvn spring-boot:run'

5. Ejecutar el cliente solo, fuera del servidor de spring-boot:
Entrar en la carpeta frontend/src/main/ngx, si tienes instalado node y npm en el sistema ejecutar los siguientes comandos:
'npm install'
'npm start' 

6. Si se desea desplegar el cliente y el servidor todo junto, ejecutar el siguiente comando 'mvn clean install -Pdeploy'. 
Utilizar el siguiente URL para acceder a la aplicación 'https://localhost:33333/app/index.html' 
