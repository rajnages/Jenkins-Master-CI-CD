# What is Jenkins
1. Jenkins is open source automation server that enables developers to build and test and deploy their software.
2. it's cornerstone tool in a field of CI/CD
3. it's a plugin based tool

# How Does Jenkins Work?
Source Code Management Integration: Jenkins pulls the latest code from version control systems (e.g., GitHub, Bitbucket)
Build Automation: It compiles the code and packages it into an executable format
Testing: Jenkins runs automated tests to ensure the code is stable and bug-free
Deployment: It deploys the code to the production environment or a staging server
Monitoring and Notifications: Jenkins provides real-time feedback and notifications to the development team about the build status

# why we used Jenkins
1. Jenkins is a powerful tool that can help you automate your software development process.
2. It's easy to set up and configure, even for non-technical users.
3. It integrates well with other tools and services, making it easy to integrate with your existing infrastructure.
4. It's flexible and can be customized to meet your specific needs.
5. It's a popular choice among developers for CI/CD pipelines.

# installtion in windows
1. Download the latest version of Jenkins from the official website.
2. Extract the downloaded archive to a directory of your choice.
3. Open a terminal and navigate to the extracted directory.
4. Run the following command to start Jenkins In windows
sudo java -jar jenkins.war
5. Open your web browser and go to XXXXXXXXXXXXXXXXXXXXXX to access Jenkins.
6. Follow the on-screen instructions to complete the setup.
7. You can now use Jenkins to automate your software development process.

# Installation in ubuntu Linux
1. Open a terminal and run the following command to update the package index:
sudo apt update
2. Run the following command to install Java:
sudo apt install default-jre
3. Download the latest version of Jenkins from the official website.
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install fontconfig openjdk-17-jre
sudo apt-get install jenkins

# maven
sudo apt update
sudo apt install maven
# Maven Environment Variables
export M2_HOME=/usr/share/maven
export PATH=$M2_HOME/bin:$PATH

4. Start Jenkins by running the following command:
sudo systemctl start jenkins
5. Enable Jenkins to start on boot by running the following command:
sudo systemctl enable jenkins
6. Open your web browser and go to XXXXXXXXXXXXXXXXXXXXX to access Jenkins.
7. Follow the on-screen instructions to complete the setup.
8. You can now use Jenkins to automate your software development process.

# what is jobs in jenkins
Jobs are the heart of Jenkins's build process. A job can be considered as a particular task to achieve a required objective in Jenkins.

1. freestyle project => it's a simple project that can be used to build and test any type of software.
2. maven project => it's a project that uses Maven as the build tool.
3. pipeline => This is a more advanced project that uses a pipeline script to define the build process.
4. multibranch configuration project => it's a project that can be used to build and test any type of software.
5. Github organization => This option enables all github projects

# How to configure a job in Jenkins?
1. First, select the "Configure" option that is shown in the dropdown in the below image.
2. Secondly, set the purpose of the job in the "Description" section.
3. discard old builds => it's a checkbox that is used to discard old builds.
4. Github project => it's a checkbox that is used to configure the job with a github project.
5. This project is Parameterized => it's a checkbox that is used to configure the job with parameters.
6. throttale builds => it's a checkbox that is used to configure the job with throttale builds.

# in pipeline language two types
1. pipeline script => it's a script that is used to define the build process.
2. DSLs => it's a domain-specific language that is used to define the build process.


########################Jenkins file ##############################################
 # Pipiline script syntax
pipeline => agent any => stages => stage => steps

#################################################################


# Plugins all
Pipeline Plugins:
Pipeline (previously known as Workflow)
Pipeline Utility Steps
Blue Ocean - provides a modern, visual interface for pipelines

Source Code Management:
Git
GitHub Integration
Bitbucket Integration
GitLab

Build and Testing:
Maven Integration
Gradle
JUnit
Docker
NodeJS

SonarQube Scanner
Ansible
AWS Related:
AWS CodeBuild
Amazon Inspector
AWS Steps [2]
AWS Pipeline Steps
AWS Credentials

Security and Authentication:
Credentials
Role-based Authorization Strategy
LDAP
Active Directory

Notification and Reporting:
Email Extension
Slack Notification
Build Timestamp
Build Name Setter
HTML Publisher

Code Quality and Analysis:
Checkstyle
FindBugs
PMD
Cobertura
Warnings Next Generation

Artifact Management:
Artifactory
Nexus Artifact Uploader

Utility Plugins:
Workspace Cleanup
Build Timeout
AnsiColor - adds color to console output
Parameterized Trigger
Copy Artifact

Pipeline Development:
Pipeline Stage View
Pipeline Graph View
Pipeline: GitHub Groovy Libraries
Pipeline: Shared Groovy Libraries

Infrastructure and Configuration:
Terraform
Kubernetes
Configuration File Provider
Credentials Binding

Monitoring and Diagnostics:
Monitoring
Performance
Metrics
Dashboard View

====================================================================================================

SonarQube Scanner:
=> SonarQube Scanner is a tool used to analyze the quality of source code. It is part of the SonarQube platform, which is focused on code quality, security, and maintainability.

The scanner works by scanning the codebase for:
1. Code quality issues: Detects potential bugs, vulnerabilities, and code smells.
2. Static analysis: Inspects code without executing it.
3. Coding standards compliance: Ensures code adheres to predefined rules and best practices.
4. Security vulnerabilities: Identifies security flaws like SQL injection, cross-site scripting, etc.

Why is SonarQube Scanner Used?
1. To maintain clean code that is readable, maintainable, and less prone to bugs.
2. To enforce coding standards and improve developer productivity.
3. To identify security vulnerabilities during the development phase.
4. To ensure the software meets the required quality gates before deployment.


Trivy Scanner:
1. Trivy is a security scanning tool focused on container images, file systems, and Git repositories.

It detects:
1. Known vulnerabilities: In open-source software, libraries, or dependencies used in container images.
2. Configuration issues: Misconfigurations in Kubernetes, Terraform files, and Docker images.
3. License issues: Non-compliance with open-source licenses.
4. Trivy also integrates with DevOps pipelines to scan container images or infrastructure-as-code files during the build and deployment process.

Why is Trivy Scanner Used?
1. To ensure secure container images and infrastructure by detecting vulnerabilities early.
2. To protect against supply chain attacks by scanning for vulnerabilities in dependencies.
3. To enforce compliance with security best practices in cloud-native environments.


What is JFrog?
JFrog is a DevOps tool primarily known for JFrog Artifactory, which is a universal artifact repository manager. It supports the management and storage of software packages or "artifacts" (e.g., binaries, libraries, container images) used in development, testing, and deployment.

Why is JFrog Artifactory Used?
1. Artifact Storage and Versioning: Keeps a secure, versioned history of builds and dependencies.
2. Centralized Repository: Acts as a single source of truth for binaries and dependencies in a DevOps pipeline.
3. Dependency Management: Ensures the correct versions of dependencies are used across environments.
4. Integration with DevSecOps: Scans for vulnerabilities (via JFrog Xray) to ensure artifact security.
5. Enhanced CI/CD Pipelines: Streamlines artifact promotion between development, QA, staging, and production.
