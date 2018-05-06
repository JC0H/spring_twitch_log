# spring_twitch_log

Website for streamer - insanity , where users can register and win special gifts, using Spting and deployed on Heroku. This project above are work in progress.

## Built With

* [Spring(MVC, Security, JPA)](https://spring.io/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [Hibernate](http://hibernate.org/) - Mapping an object-oriented domain model to a relational database
* [MySQL](https://www.mysql.com/) - Relational database management system
* [HTML/CSS/JS (Bootstrap)](https://getbootstrap.com/) - Front-end library
* [Tomcat 8](tomcat.apache.org/) - Java Servlet Container
* [Twitch sdk](https://github.com/justintv/twitch-js-sdk) - Functionality for accessing the Twitch API.
* [Heroku](https://www.heroku.com/) - Cloud platform as a service (PaaS)

## Getting Started

Get a copy of project and run on your local machine. 
Uncomment 

```
 <bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource" destroy-method="close">
        <property name="driverClassName" value="${jdbc.driverClassName}"/>
        <property name="url" value="${jdbc.url}"/>
        <property name="username" value="${jdbc.username}"/>
        <property name="password" value="${jdbc.password}"/>
    </bean>
```
and add DataBase 

