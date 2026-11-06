
pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out code from GitHub'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building Docker Image'
                bat 'docker build -t devops-website .'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing Docker Image'
                bat 'docker images devops-website'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Docker Container'
                bat 'docker run -d -p 8081:80 --name devops-website-container devops-website'
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }

        failure {
            echo 'Pipeline execution failed!'
        }
    }
}
