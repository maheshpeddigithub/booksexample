Docker commands for MySql:
--------------------------

docker --version

docker run --detach --name=test-mysql --env="MYSQL_ROOT_PASSWORD=mypassword" --publish 6603:3306 mysql

docker run --detach --name=test-mysql --env="MYSQL_ROOT_PASSWORD=mypassword" --publish 6603:3306 mysql --max-connections=200


docker stop test-mysql

docker ps

docker start test-mysql


MySql DB:
---------

create database booksexample;


MySql Connection URLs:
----------------------

SpringBoot local execution:  spring.datasource.url = jdbc:mysql://localhost:6603/booksexample?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true&useSSL=false
SpringBoot Docker execution: spring.datasource.url = jdbc:mysql://172.17.0.2:3306/booksexample?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8&allowMultiQueries=true&useSSL=false


Maven SpringBoot command to launch SpringBoot Application:
----------------------------------------------------------

mvn spring-boot:run


Docker commands for BooksExample Application:
---------------------------------------------

docker images

docker build -f Dockerfile -t booksexample .

docker run -p 8090:8080 booksexample

docker image rm -f booksexample



Application REST API and example POST request (POSTMAN application):
--------------------------------------------------------------------

SpringBoot local execution: http://localhost:8080/api/books
SpringBook Docker execution: http://localhost:8090/api/books

{"id": 2, "title":"title2", "content":"content2"}



git commands:
-------------
git init

git remote add origin https://github.com/maheshpeddigithub/booksexample.git

git push -u origin master