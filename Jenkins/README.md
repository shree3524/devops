   # $${\color{blue} \textbf{Jenkins}}$$

![image](https://github.com/user-attachments/assets/2661e85e-b190-487d-98af-27cc6360dfa9)      



Jenkins is an open-source automation server that is widely used for continuous integration (CI) and continuous delivery (CD) in software development. It helps automate parts of the software development process related to building, testing, and deploying code, allowing developers to integrate changes more frequently and reliably. Here’s an overview of Jenkins:

### Key Features:

1. **Automation**: Jenkins automates various tasks involved in the software development lifecycle, such as building, testing, and deploying applications.
   
2. **Extensibility**: Jenkins supports a wide range of plugins, which extend its capabilities to support virtually any tool, technology, or service used in software development.

3. **Continuous Integration**: Jenkins allows developers to integrate code into a shared repository frequently, where automated builds and tests can be run to detect issues early.

4. **Continuous Delivery**: Jenkins can automate the deployment of applications to various environments, ensuring that code changes are delivered quickly and safely.

5. **Pipeline as Code**: Jenkins supports the concept of "Pipeline as Code," where build, test, and deploy workflows are defined as code using a domain-specific language (DSL).

6. **Distributed Builds**: Jenkins can distribute build and test loads across multiple machines, improving performance and scalability.

### How Jenkins Works:

1. **Installation and Setup**: Jenkins can be installed on various operating systems or run as a Docker container. After installation, it is accessed through a web-based interface.

2. **Job Configuration**: Users create "jobs" or "projects" in Jenkins, which define what tasks to perform, such as building code, running tests, or deploying applications.

3. **Triggering Builds**: Builds can be triggered in various ways, including:
   - Automatically through source code changes (e.g., commit to a version control system like Git).
   - Scheduled builds (e.g., nightly builds).
   - Manual triggers.

4. **Build Execution**: Jenkins executes the defined build steps, such as compiling code, running tests, and generating artifacts.

5. **Feedback and Reports**: Jenkins provides real-time feedback on build status and results. It can send notifications via email, Slack, or other channels. Detailed build logs and reports help diagnose issues.

6. **Pipeline Configuration**: Jenkins Pipelines, defined using the Jenkinsfile (a text file in the source code repository), describe the stages and steps of the build, test, and deploy process in code.

### Common Use Cases:

- **Automated Testing**: Running unit tests, integration tests, and other automated tests as part of the CI process.
- **Continuous Deployment**: Automatically deploying applications to staging or production environments after successful builds.
- **Monitoring and Alerts**: Integrating with monitoring tools to track the health and performance of applications.
- **Code Quality Analysis**: Using plugins for static code analysis, security scanning, and other quality checks.

### Example Jenkinsfile (Pipeline as Code):

```groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Example build step
                sh 'make build'
            }
        }
        stage('Test') {
            steps {
                // Example test step
                sh 'make test'
            }
        }
        stage('Deploy') {
            steps {
                // Example deploy step
                sh 'make deploy'
            }
        }
    }
}
```

Jenkins is highly versatile and can be customized to fit a wide range of workflows and requirements in software development.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Installation of jenkins

**1.launch an instance with configuration of**
- ubuntu image
- t2.medium
- security group with 8080 port
- 30 GB volume 

**2.Install java**
```
sudo apt update
sudo apt install fontconfig openjdk-17-jre
```
**3.Install jenkins**
```
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
```
