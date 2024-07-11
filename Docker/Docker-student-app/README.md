#  $${\color{blue} \textbf{Docker🐳-Student-App}}$$

**1. Create Security Group with all traffic for Instance**

**2. Launch one Instance and connect**

**3. install docker and start**
````
yum install docker -y
service docker start
````

**4. Create Directories for Different Servers**
- Database
- Tomcat-Backend


##  ${\color{blue} \textbf{Enter the Database Directory}}$

**1. Create a Dockerfile for Build a database image**
````
vim Dockerfile
````
**2. Add that componants in Dockerfile**
````
FROM mariadb

LABEL database = "studentapp"

ENV MARIADB_ROOT_PASSWORD=pass@1234

COPY student-rds.sql /docker-entrypoint-initdb.d/

CMD ["mariadbd"]
````
**3. Create a student-rds.sql file and add some commands for create and use database and add the data**
````
create database studentapp;
use studentapp;
CREATE TABLE if not exists students(student_id INT NOT NULL AUTO_INCREMENT,
        student_name VARCHAR(100) NOT NULL,
    student_addr VARCHAR(100) NOT NULL,
        student_age VARCHAR(3) NOT NULL,
        student_qual VARCHAR(20) NOT NULL,
        student_percent VARCHAR(10) NOT NULL,
        student_year_passed VARCHAR(10) NOT NULL,
        PRIMARY KEY (student_id)
);
````

**4. Build a image form that Dockerfile for database**
````
docker build -t database .
````
````
docker images
````
**5. Create a Container from database Image**
````
docker run -itd --name database -p 3306:3306 database
````
````
docker ps
````

##  ${\color{blue} \textbf{Enter the Tomcat-Backend Directory}}$

**1. Create a Dockerfile for Build a tomcat image**
````
vim Dockerfile
````
**2. Add that componants in Dockerfile**
````
FROM ubuntu:latest

RUN apt update -y

RUN apt install openjdk-11-jdk -y

WORKDIR /opt/tomcat

EXPOSE 8080

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.91/bin/apache-tomcat-9.0.91.tar.gz ./

RUN tar -xzf apache-tomcat-9.0.91.tar.gz -C ./

ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war ./apache-tomcat-9.0.91/webapps/

ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar ./apache-tomcat-9.0.91/lib

COPY context.xml ./apache-tomcat-9.0.91/conf/context.xml

CMD ["./apache-tomcat-9.0.91/bin/catalina.sh", "run"]
````
**3. Create a context.xml file and add following content**

${\color{blue} \textbf{NOTE : }}$ Add IP address of database container in resource block and add that resource.

````
<Resource name="jdbc/TestDB" auth="Container" type="javax.sql.DataSource" maxTotal="100" maxIdle="30" maxWaitMillis="10000" username="root" password="1234" driverClassName="com.mysql.jdbc.Driver" url="jdbc:mysql://172.17.0.2:3306/studentapp"/>
````
${\color{skyblue} \textbf{context.xml}}$
````
<?xml version="1.0" encoding="UTF-8"?>
<!-- 
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
 -->
<!--  The contents of this file will be loaded for each web application  -->
<Context>
<!--  Default set of monitored resources. If one of these changes, the     -->
<!--  web application will be reloaded.                                    -->
<WatchedResource>WEB-INF/web.xml</WatchedResource>
<WatchedResource>${catalina.base}/conf/web.xml</WatchedResource>
<Resource name="jdbc/TestDB" auth="Container" type="javax.sql.DataSource" maxTotal="100" maxIdle="30" maxWaitMillis="10000" username="root" password="pass@1234" driverClassName="com.mysql.jdbc.Driver" url="jdbc:mysql://172.17.0.2:3306/studentapp"/>
<!--  Uncomment this to disable session persistence across Tomcat restarts  -->
<!-- 
    <Manager pathname="" />
     -->
</Context>
````

**4. Build a image form that Dockerfile for tomcat**
````
docker build -t tomcat .
````
````
docker images
````
**5. Create a Container from tomcat Image**
````
docker run -itd --name tomcat -p 8080:8080 tomcat
````
````
docker ps
````

${\color{blue} \textbf{ check public IP on Browser}}$
````
curl ifconfig.me
````



