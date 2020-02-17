<h1>Pasos para generar un arquetipo:</h1>

<ol>
<li>cd en la carpeta del proyecto</li>
<br/>
<li>Ejecutar el comando&nbsp;&nbsp;&nbsp;<code>mvn archetype:create-from-project</code></li>
<br/>
<li> Para visualizar la estructura del proyecto moverse a la carpeta&nbsp;&nbsp;&nbsp;<code>target/generated-sources/archetype</code>&nbsp;&nbsp;y una vez ahí ejecutar el comando&nbsp;&nbsp;&nbsp;<code>tree</code></li>
<br/>
<li> Para descartar la carpeta&nbsp;&nbsp;<code>target</code>&nbsp;&nbsp;del proyecto ejecutar&nbsp;&nbsp;&nbsp;<code>mvn clean</code></li>
<br/>
<li>Dentro de la carpeta&nbsp;&nbsp;<code>src/main/resources/META-INF/maven</code>&nbsp;&nbsp;se encuentra el archivo&nbsp;&nbsp;&nbsp;<code>archetype-metadata.xml</code></li>

El contenido de ese fichero debería ser algo así:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<archetype-descriptor xsi:schemaLocation="https://maven.apache.org/plugins/maven-archetype-plugin/archetype-descriptor/1.1.0 http://maven.apache.org/xsd/archetype-descriptor-1.1.0.xsd" name="basicproject"
    xmlns="https://maven.apache.org/plugins/maven-archetype-plugin/archetype-descriptor/1.1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <fileSets>
    <fileSet encoding="UTF-8">
      <directory></directory>
      <includes>
        <include>.gitignore</include>
        <include>basicproject-database.launch</include>
        <include>build.bat</include>
        <include>README.md</include>
      </includes>
    </fileSet>
  </fileSets>
  <modules>
    <module id="${rootArtifactId}-api" dir="api" name="${rootArtifactId}-api">
      <fileSets>
        <fileSet filtered="true" packaged="true" encoding="UTF-8">
          <directory>src/main/java</directory>
          <includes>
            <include>**/*.java</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
    <module id="${rootArtifactId}-frontend" dir="frontend" name="${rootArtifactId}-frontend">
      <fileSets>
        <fileSet filtered="true" encoding="UTF-8">
          <directory>src/main/resources</directory>
          <includes>
            <include>**/*.html</include>
            <include>**/*.properties</include>
          </includes>
        </fileSet>
        <fileSet encoding="UTF-8">
          <directory>src/main/resources</directory>
          <includes>
            <include>**/*.</include>
            <include>**/*.css</include>
            <include>**/*.ico</include>
            <include>**/*.scss</include>
            <include>**/*.md</include>
            <include>**/*.png</include>
            <include>**/*.json</include>
            <include>**/*.js</include>
            <include>**/*.ejs</include>
            <include>**/*.ts</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
    <module id="${rootArtifactId}-boot" dir="boot" name="${rootArtifactId}-boot">
      <fileSets>
        <fileSet filtered="true" packaged="true" encoding="UTF-8">
          <directory>src/main/java</directory>
          <includes>
            <include>**/*.java</include>
          </includes>
        </fileSet>
        <fileSet encoding="UTF-8">
          <directory>src/main/resources</directory>
          <includes>
            <include>**/*.yml</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
    <module id="${rootArtifactId}-model" dir="model" name="${rootArtifactId}-model">
      <fileSets>
        <fileSet filtered="true" packaged="true" encoding="UTF-8">
          <directory>src/main/java</directory>
          <includes>
            <include>**/*.java</include>
          </includes>
        </fileSet>
        <fileSet filtered="true" encoding="UTF-8">
          <directory>src/main/resources</directory>
          <includes>
            <include>**/*.xml</include>
            <include>**/*.properties</include>
          </includes>
        </fileSet>
        <fileSet filtered="true" encoding="UTF-8">
          <directory>src/main/db</directory>
          <includes>
            <include>**/*.txt</include>
            <include>**/*.properties</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
    <module id="${rootArtifactId}-ws" dir="ws" name="${rootArtifactId}-ws">
      <fileSets>
        <fileSet filtered="true" packaged="true" encoding="UTF-8">
          <directory>src/main/java</directory>
          <includes>
            <include>**/*.java</include>
          </includes>
        </fileSet>
      </fileSets>
    </module>
  </modules>
</archetype-descriptor>

```

<li> Crear el Arquetipo (de nuevo) con &nbsp;&nbsp;<code>mvn install</code></li>
<br/>
<li>Para generar un proyecto del arquetipo ejecutar el comando&nbsp;&nbsp;<code>mvn archetype:generate</code></li>
</ul>
<br/>
<h1>Propiedades del proyecto</h1>
<ul>
<li>El cliente web se sitúa en la carpeta&nbsp;&nbsp;<code>frontend/src/main/resources/webapp</code></li>
<br/>
<li>El archivo&nbsp;&nbsp;<code>build.bat</code>&nbsp;&nbsp;se ejecuta cuando se realiza un&nbsp;&nbsp;<code>mvn install</code>&nbsp;&nbsp;en la carpeta base del proyecto.<br/>
Si no encuentra la carpeta node_modules la crea, genera el build del cliente web y lo mueve a la carpeta public.</li>
</ul>
<br/>
<h1>Ejecución del proyecto</h1>

<ul>
<li>Para ejecutar la base de datos lanzamos el archivo&nbsp;&nbsp;<code>basicproject-database.launch</code></li>
<br/>
<li>Para ejecutar el servidor lanzamos el archivo&nbsp;&nbsp;<code>ServerApplication.java</code>&nbsp;&nbsp;situado en el paquete&nbsp;&nbsp;<code>com.imatia.basicproject.boot.core</code></li>
</br>
<li>Para visualizar el cliente web vamos a la url&nbsp;&nbsp;<a href="">http://localhost:8080/app/index.html</a></li>
