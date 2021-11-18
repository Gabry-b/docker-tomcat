FROM tomcat:latest
#FROM establece la imagen de base, que 
#va a ser tratada y configurada más adelante

LABEL maintainer="Nidhi Gupta"
#Aquí lo unico que nos referimos, con el valor LABEL
#maintainer, es al autor o autora de las imagenes y 
#configuraciones que van a a ser generadas
#por ejemplo, con un docker inspect nos devolvería
#esa información

ADD ./target/LoginWebApp-1.war /usr/local/tomcat/webapps/
#Con ADD establecemos que archivos o directorios van a ser
#agregados al sistema de archivos de la imagen, exactamente en 
#la ruta <dest>

EXPOSE 8080
#Con EXPOSE establecemos el puerto al que debe comunicarse
#Docker cuando se ejecuta el contenedor, podemos poner si el puerto
#es TCP o UDP, pero predeterminadamente si no se pone nada es TCP

CMD ["catalina.sh", "run"]
#  CMD ["ejecutable", "parámetro"]
#Con CMD establecemos valores que se en nuestro primer caso
#se ejecutarán el .sh a la par que el contenedor