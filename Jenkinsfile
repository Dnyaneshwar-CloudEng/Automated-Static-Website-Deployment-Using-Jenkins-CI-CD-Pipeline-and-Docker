pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out code from GitHub'
                git branch: 'main',
                    url: 'https://github.com/Dnyaneshwar-CloudEng/Create-a-Simple-Jenkins-Pipeline-for-CI-CD.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building Docker Image'
                sh 'docker build -t devops-website .'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing Docker Image'
                sh 'docker images devops-website'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Application'
                sh 'docker run -d -p 8080:80 --name my-website devops-website'
            }
        }
    }
}
