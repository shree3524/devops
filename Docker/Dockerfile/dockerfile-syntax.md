**basic syntax of docker file -**

----------------------------------

INSTRUCTION arguments

-----------------------------------

FROM  baseimagename  -  

provides a baseimage on which layers are created or ran

for eg 

FROM centos:7

--------------------------------
RUN command         - Run instruction to start and create the required file structure 
                      that you need and install some required software dependencies
                      
for eg

RUN yum install httpd -y

--------------------------------
--------------------------------
EXPOSE port       - exposing the container to a port 

for eg

EXPOSE 80

--------------------------------

--------------------------------
CMD   defines the command that launches the process , that you want to run within container

for eg- can be overridden , replced as well

CMD ["executable","param1","param2"]

CMD ["httpd" , "-DFOREGROUND"]

CMD command param1 param2 

CMD httpd -DFOREGROUND

----------------------------------

----------------------------------

WORKDIR  - you can change the working directory in the image for remainig build instructions

WORKDIR pathhway of destination

----------------------------------

----------------------------------

COPY    - is used to copy files from the local system into your image.

COPY source destination

-----------------------------------

-----------------------------------
ADD     - is used when you want to retrieve data from remote location into your image and
          container.

ADD source destination 

-----------------------------------
-----------------------------------

USER

USER root - preferance of user can be performed using this argument.

-----------------------------------
-----------------------------------
ENTRYPOINT  - the mentioned executable using Entrypoint.

         by default the mentioned executable will and can be replace only and only by 
         sudo docker run --entrypoint [new_command] [docker_image] [optional:value] , i.e
        entrypoint flag only.  
              
ENTRYPOINT ["executable" , "param1"]

ENTRYPOINT  executable param1 param2 

-----------------------------------
------------------------------------










