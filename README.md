# Automated Static Website Deployment Using Jenkins CI/CD Pipeline and Docker

## 📌 Project Overview

This project demonstrates the implementation of a **Jenkins CI/CD Pipeline** to automate the build, testing, and deployment of a static website using Docker.

The frontend website is developed using HTML and CSS, containerized using Docker, and served through an Nginx web server running inside an Ubuntu-based Docker container.

Jenkins automates the CI/CD workflow by retrieving source code from GitHub, building Docker images, testing the image, and deploying the application inside a Docker container.

## 🎯 Project Objectives

- Understand the fundamentals of CI/CD.
- Automate application deployment using Jenkins.
- Build Docker images using a Dockerfile.
- Deploy static websites inside Docker containers.
- Use Nginx as a web server.
- Manage source code using Git and GitHub.
- Understand containerization and deployment workflows.

## 🛠️ Technologies Used

| Technology   | Purpose 

| HTML         | Frontend development 
| CSS          | Website styling 
| Ubuntu 24.04 | Docker base image 
| Nginx        | Web server 
| Docker       | Application containerization 
| Jenkins      | CI/CD automation 
| Git          | Version control 
| GitHub       | Source code repository

 ## Project Architecture – Jenkins CI/CD with Docker

Developer
   |
   v
Git (Version Control)
   |
   v
GitHub (Source Code Repository)
   |
   v
Jenkins CI/CD Pipeline
   |
   +---- Checkout
   |
   +---- Build Docker Image
   |
   +---- Test Docker Image
   |
   +---- Deploy Container
             |
             v
       Docker Container
             |
             v
        Nginx Web Server
             |
             v
        Static HTML Website
             |
             v
       User Access (Browser)

## 📂 Project Structure

```text
Create-a-Simple-Jenkins-Pipeline-for-CI-CD/
│
├── demo.html
│
├── Dockerfile
│
├── Jenkinsfile
│
└── README.md
```

## ⚙️ Jenkins CI/CD Pipeline

The Jenkins pipeline consists of four main stages:

### 1. Checkout
Retrieves the application source code from the GitHub repository.

### 2. Build
Builds the Docker image using the Dockerfile.

### 3. Test
Checks the generated Docker image.

### 4. Deploy
Runs the Docker container to deploy the static website using Nginx.

**Pipeline Workflow:**

`Checkout → Build → Test → Deploy`

## 🐳 Dockerfile

The Dockerfile uses Ubuntu 24.04 as the base image and installs Nginx to serve the static website.

```dockerfile
FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

RUN rm -f index.nginx-debian.html

COPY demo.html /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

### Dockerfile Instructions

| Instruction | Description |
|---|---|
| FROM | Specifies Ubuntu base image |
| RUN | Installs Nginx |
| WORKDIR | Sets the website working directory |
| COPY | Copies the HTML file into the web directory |
| EXPOSE | Documents the container HTTP port |
| CMD | Starts the Nginx web server |

## 🚀 Project Implementation

### Step 1: Clone the GitHub Repository

```bash
git clone https://github.com/Dnyaneshwar-CloudEng/Create-a-Simple-Jenkins-Pipeline-for-CI-CD.git
```

Navigate to the project directory:

```bash
cd Create-a-Simple-Jenkins-Pipeline-for-CI-CD
```

### Step 2: Build Docker Image

```bash
docker build -t devops-website .
```

### Step 3: Verify Docker Image

```bash
docker images
```

### Step 4: Run Docker Container

```bash
docker run -d -p 8081:80 --name devops-container devops-website
```

### Step 5: Verify Running Container

```bash
docker ps
```

### Step 6: Access the Website

Open the following URL in your browser:

```text
http://localhost:8081
```

The static website will be served by Nginx running inside the Docker container.

## 🔄 Jenkins Pipeline Execution

1. Install and configure Jenkins.
2. Install Git and Docker on the Jenkins agent.
3. Create a new Pipeline job in Jenkins.
4. Select Pipeline Script from SCM.
5. Select Git as the source control management system.
6. Enter the GitHub repository URL.
7. Select the `main` branch.
8. Specify `Jenkinsfile` as the script path.
9. Save the configuration.
10. Execute the pipeline using Build Now.

Jenkins will retrieve the Jenkinsfile from GitHub and execute the defined pipeline stages.

## 📸 Expected Results

- Successful GitHub source code checkout.
- Successful Docker image creation.
- Docker image verification.
- Successful container deployment.
- Static website accessible through the browser.

## 💡 Key Learnings

- Understanding Jenkins Declarative Pipeline syntax.
- Automating application deployment using Jenkins.
- Creating Docker images using Dockerfiles.
- Deploying static websites using Nginx.
- Working with Ubuntu-based Docker containers.
- Integrating GitHub with Jenkins.
- Understanding Docker images and containers.
- Troubleshooting Docker build and deployment errors.

## 🔮 Future Enhancements

- Integrate Docker Hub for image storage.
- Implement automated deployment triggers.
- Add Docker image tagging and versioning.
- Deploy the application on AWS EC2.
- Implement container health checks.
- Improve automated application testing.

## 👨‍💻 Author

**Dnyaneshwar Nangrale**

MCA – Cloud Computing

MIT ADT University, Pune

**Career Interests:** Cloud Computing | DevOps | AWS | CI/CD | Docker

## 🔗 GitHub Repository

[Create-a-Simple-Jenkins-Pipeline-for-CI-CD](https://github.com/Dnyaneshwar-CloudEng/Create-a-Simple-Jenkins-Pipeline-for-CI-CD)

---

⭐ If you find this project useful, feel free to explore the repository and learn more about Jenkins CI/CD and Docker-based application deployment.

**Project Title:** Automated Static Website Deployment Using Jenkins CI/CD Pipeline and Docker.
