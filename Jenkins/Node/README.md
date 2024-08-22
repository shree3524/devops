# $${\color{blue}\textbf Node}$$


### steps:

**1.launch two instance with**
   - t2.medium
   - ubuntu
   - 30 gb storage

**one is jenkins (master) and other one is node**

**2.install java and jenkins in master access it and install java in node**

**3.In master instance do** \
    - ssh-keygen \
    - cd .ssh  \
    - copy public key \
    - go to node instance --> cd .ssh -->paste in authorized_keys \
    - make working directory in node instance mkdir /opt/jenkins  \
    - give permission chmod 777 /opt/jenkins

**4.sign up in jenkins**
  - go to manage jenkins
  - go to credentials
  - add credentials--> ssh with private key --> paste private key and save it

 **5.create node**
  - go to manage jenkins
  - go to node
  - new node --> name --> put as shown as in picture -->in host put private ip of node instance

 ![Screenshot (284)](https://github.com/user-attachments/assets/e75c771f-bbd0-4ae5-9b05-0388e1b96563)
 ![Screenshot (285)](https://github.com/user-attachments/assets/88acb8a2-7ac6-4090-a93d-b5309f17f0e9)
 
 **6.create the pipline write the following code in pipeline**
````
   pipeline {
    agent {
        label 'node-label'
    }

    stages {
        stage('build') {
            steps {
                sh 'touch ji.txt'
            }
        }
    }
}
````
**7 build**
![image](https://github.com/user-attachments/assets/6626e320-6474-48ee-b07e-89669b1b6d29)

![Screenshot (283)](https://github.com/user-attachments/assets/44f1f836-3c3a-4852-b93f-9c7d26eea5a2)

