Práctica: Servidor DLNA con Docker
En esta práctica, se ha implementado un servidor DLNA utilizando Docker. El objetivo es permitir la reproducción de un vídeo en formato MP4 desde el servidor DLNA en un reproductor VLC instalado en un sistema Windows.

Paso 1: Creación del Dockerfile
Se ha creado un archivo llamado Dockerfile que define los pasos necesarios para construir la imagen del contenedor del servidor DLNA. El Dockerfile se encarga de instalar las dependencias necesarias, copiar los archivos de configuración y establecer las configuraciones relevantes.

El Dockerfile contiene las siguientes instrucciones:

Se utiliza una imagen base de Ubuntu.
Se actualiza el sistema y se instala el servidor DLNA (en este caso, se ha utilizado "minidlna").
Se copian los archivos de configuración necesarios para el servidor DLNA.
Se definen los volúmenes para almacenar el contenido multimedia.
Se expone el puerto necesario para la conectividad con el servidor DLNA.
Paso 2: Creación del shellscript
Se ha creado un shellscript para automatizar la construcción y ejecución del contenedor del servidor DLNA. Este script se encarga de ejecutar los comandos de Docker necesarios para construir la imagen y crear el contenedor.

El shellscript realiza los siguientes pasos:

Utiliza el comando docker build para construir la imagen a partir del Dockerfile.
Utiliza el comando docker run para crear y ejecutar el contenedor a partir de la imagen creada. Se especifican los puertos necesarios y se crean los volúmenes adecuados.
Paso 3: Conexión desde el reproductor VLC en Windows
Una vez que el contenedor del servidor DLNA esté en funcionamiento, se puede conectar desde el reproductor VLC en un sistema Windows siguiendo estos pasos:

Abre el reproductor VLC en tu sistema Windows.
En la barra de menú, selecciona "Media" y luego "Abrir dispositivo de red".
En la pestaña "DLNA/UPnP", selecciona el servidor DLNA correspondiente (puede tener el nombre que hayas especificado en el script).
Busca el vídeo MP4 que has guardado en el volumen del contenedor y selecciónalo para reproducirlo.
