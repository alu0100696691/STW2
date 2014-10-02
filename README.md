#Sistemas y Tecnologías Web 

##Práctica: Despliegue en Heroku

**Autores:** Jose Antonio Rodríguez Leandro y Noelia Rodríguez Martín
			 
**Fecha:** 29 Septiembre 2014

**Details:** Desplegamos en Heroku la práctica anterior "Aplicación Web con Sinatra: Contar la Popularidad de Nuestros Amigos en Twitter", añadimos pruebas y usamos los issues de Github. 

###Instalación

En primer lugar, instalaremos las gemas necesarias con el comando:
`bundle install`

###Ejecución

####Ejecución de los tests

Para ejecutar los test de esta aplicación, una vez descargada nos situamos en el directorio que la contiene y ejecutamos el siguiente comando:
`rake test`

####Ejecución en local

Para ejecutar la aplicación, también situados en el directorio que la contiene, ejecutar el comando:
`ruby twitter.rb`
A continuación, yendo en el navegador a la dirección http://localhost:4567/ podemos hacer uso de la aplicación.

####Ejecución en Heroku

Heroku es una plataforma como servicio de computación en la Nube que soporta distintos lenguajes de programación. También podemos acceder a la aplicación a través de Heroku desde el enlace `http://cuenta.herokuapp.com/`.

###Recursos

1. https://github.com/crguezl/number_cruncher
2. http://nereida.deioc.ull.es/~lpp/perlexamples/node455.html
3. http://nereida.deioc.ull.es/~lpp/perlexamples/node482.html


