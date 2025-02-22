Básicamente, se nos enseñaron las entrañas de como funcionan los servidores.

Controller (Patch / Put) -> Service -> Repo -> DB

**Tomcat:** Servicio de aplicaciones

**Servlet Container:**
- **Servlet:** Un componente que recibe requests y emite responses.

### Capa lógica
Lo que me permite agregar comportamiento extendido al back, como JavaScript a Html
### IoC Container
Contenedor de beans que en última nos permitirá comunicar y gestionar los beans
### Bean
Instancias que se guardan en el IoC container

Esto significa que el elemento se recreará todo el tiempo cada vez que se re ejecute la app.
`<bean id="messageService" class="org.osgomez.services.MessageService" scope="prototype" />`


