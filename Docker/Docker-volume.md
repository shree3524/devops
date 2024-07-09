
**docker volume**
```
 docker volume create ebs-vol
 docker volume ls
 docker run -itd --name cont1  --mount source=ebs,target=/app ubuntu:latest
 docker run -itd --name cont2  --mount source=ebs,target=/app ubuntu:latest
 docker ps --filter volume=ebs-vol
 docker exec -it cont1 /bin/bash
 cd app
 touch demo.txt
 exit
#log in into another container
 docker exec -it cont2 /bin/bash
 ls app
````
**attach local to file to container**
````
docker run -itd --name example1 -v ${PWD}/ec2:/var/demo ubuntu
````
