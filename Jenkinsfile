
pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building the application...'
                bat 'echo Application build started'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t devops-website .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo 'Running Docker container...'
                bat 'docker run -d -p 8081:80 --name devops-container devops-website'
            }
        }

    }

    post {
        success {
            echo 'CI/CD Pipeline executed successfully!'
        }

        failure {
            echo 'CI/CD Pipeline failed. Check console output.'
        }
    }
}
