#  $${\color{lightlightblue} \textbf{Docker 🐳}}$$


##  ${\color{lightblue} \textbf{ Monolithic \ vs \ Microservises}}$

| **Aspect**                  | **Monolithic Architecture**                             | **Microservices Architecture**                          |
|-----------------------------|---------------------------------------------------------|----------------------------------------------------------|
| **Definition**              | Entire app as one unit, tightly integrated              | Split into smaller, loosely coupled services             |
| **Integration**             | Components tightly coupled                              | Services loosely coupled                                 |
| **Scalability**             | Scales by replicating whole app                        | Scales by scaling individual services                    |
| **Technology Stack**        | Single stack for entire app                             | Different stacks for each service                        |
| **Development**             | Centralized development and deployment                  | Decentralized development and deployment                 |
| **Testing**                 | Testing involves whole app                             | Services tested independently                            |
| **Maintenance**             | Updates affect entire app                               | Easier updates, changes localized to specific services   |
| **Advantages**              | Simplicity, optimized performance                      | Agility, scalability, fault isolation                    |
| **Disadvantages**           | Inflexible, slower scaling, tech limitations            | Complexity in management, increased overhead             |
| **Use Cases**               | Small-medium apps, simpler needs                        | Large, complex apps needing flexibility and scalability |


![image](https://github.com/abhipraydhoble/devops-B-34/assets/122669982/7fcb6dc3-dfcd-4a00-9349-91b16869bd39)


${\color{Green} \textbf{1. \ Developement \ Team:}}$ Responsible for writing code

${\color{Orange} \textbf{2. \ Testing \ Team:}}$ Responsible for Testing code

${\color{Red} \textbf{3. \ Operations \ Team:}}$ Responsible for providing infrastructure setup
   
- So all the code is stored or integrated inside github
- We cant deliver code to client directly
  Wwe need to test this code
- So developers will test the code on machine/server where we need to install dependencies like
    - angular-frontend
    - java -backend
    - database server
    - tomcat for app
  so this set up we called as environment

- There are multliple environments present in a project such as
  
  ${\color{Green} \textbf{1. Dev}}$ : Where developers write and test code.
  
  ${\color{Orange} \textbf{2. Test}}$ : Where testers ensure the code works correctly
  
  ${\color{Yellow} \textbf{3. UAT (User Acceptance Testing)}}$ : Where customer will test the product
  
  ${\color{Red} \textbf{4. Prod}}$ : Where the final product runs for end-users.

- Installation of dependencies and particular version of software is a very difficult task
- To avoid these kind of environmental issues we are using docker
- Whatever the softwares we required is install using docker
  
##  ${\color{lightblue} \textbf{ Que. \ What \ is \ Docker \?}}$
${\color{lightblue}  \textbf{Docker}}$ 
- is an open source platform for developing, shipping and running applications in containers.
- containers are lightweight, isolated environments that package application and their dependencies together.
  
  **Benefits**
  - portability
  - scalability
  - consistency
  - resource efficiency




  ##  ${\color{lightblue} \textbf{On-Premises \ vs. \ Virtual Machines \ (VMs)}}$ 

| Feature                    | On-Premises                                      | Virtual Machines (VMs)                          |
|----------------------------|--------------------------------------------------|-------------------------------------------------|
| **Infrastructure**         | Physical servers located on-site                | Virtualized servers hosted either locally or in the cloud |
| **Initial Cost**           | High upfront investment in hardware             | Lower initial cost, pay-as-you-go model         |
| **Maintenance**            | Requires in-house IT staff for maintenance      | Managed by cloud providers or minimal local maintenance |
| **Scalability**            | Limited by physical hardware capacity           | Highly scalable, easy to add or remove resources |
| **Deployment Time**        | Longer, due to hardware setup and configuration | Faster, almost instant deployment               |
| **Control**                | Full control over hardware and software         | Control over virtual instances, less over physical hardware |
| **Security**               | Physical security controlled by the organization| Security managed by provider, with shared responsibility model |
| **Performance**            | High performance, no virtualization overhead    | Potential slight overhead due to virtualization |
| **Disaster Recovery**      | Requires in-house backup solutions              | Often includes built-in backup and recovery options |
| **Flexibility**            | Less flexible, tied to physical hardware        | More flexible, can easily reconfigure resources |
| **Updates**                | Manual updates required                         | Automated updates and patches provided by provider |
| **Energy Efficiency**      | Organization responsible for energy consumption | Energy efficiency managed by provider           |
| **Location Dependency**    | Must be managed on-site                         | Accessible from anywhere with internet access   |






##  ${\color{lightblue} \textbf{Virtual Machines (VMs) \ vs. \  Containers)}}$

| Feature                   | Virtual Machines (VMs)                               | Containers                                     |
|---------------------------|------------------------------------------------------|------------------------------------------------|
| **Architecture**          | Includes the entire OS, virtual hardware, and application | Shares the host OS kernel, includes only the application and its dependencies |
| **Size**                  | Typically large, includes full OS                   | Lightweight, usually in MBs                    |
| **Startup Time**          | Slower, can take minutes                            | Fast, usually in seconds                       |
| **Performance**           | Potential overhead due to full OS virtualization    | Near-native performance, minimal overhead      |
| **Isolation**             | Strong isolation, each VM has its own OS            | Process-level isolation, shares OS kernel      |
| **Resource Efficiency**   | Less efficient, more resources required per VM      | Highly efficient, better resource utilization  |
| **Portability**           | Portable across different environments, but larger in size | Highly portable, easy to move and replicate   |
| **Management**            | Requires hypervisor (e.g., VMware, Hyper-V)         | Requires container runtime (e.g., Docker)      |
| **Deployment Speed**      | Slower deployment due to full OS boot               | Rapid deployment                               |
| **Scalability**           | Scalable, but with more overhead and complexity     | Highly scalable with orchestration tools (e.g., Kubernetes) |
| **Security**              | Strong isolation with separate OS instances         | Shared kernel can pose security risks, but improving |
| **Use Cases**             | Running multiple OS environments, legacy application support | Microservices, agile development, continuous integration/continuous deployment (CI/CD) |
| **Storage**               | Each VM has its own storage                         | Containers can share storage volumes           |
| **Networking**            | Requires network bridging or virtual netwo






##  ${\color{lightblue} \textbf{docker \ architecture}}$ 




![docker architecture](https://github.com/abhipraydhoble/devops-B-34/assets/122669982/5f9d4992-8282-4bd5-8e3f-640e715c737c)






##  ${\color{lightblue} \textbf{Installation-Steps  \ (Amazon-Linux)}}$ 


````
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
````
````
docker --version
````



##  ${\color{lightblue} \textbf{Basic \ Docker \ Commands}}$ 
1. List Docker images:
````
   docker images
````
2. Pull Image From REgistry/DockerHub
````
docker pull <image_name>
````
3. Create Conatiner From Image
````
docker run -itd -p 80:80 <image_name>
````
4. List Running Conatainers
````
docker ps
````
5. Log In Into Conatainer
````
docker exec -it <container id> /bin/bash
````
