pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/SHADDY2001/DevOps-CI-CD-with-Docker-Terraform-Jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-app ./app'
            }
        }

        stage('Run Docker Compose') {
            steps {
                sh 'docker compose up -d'
            }
        }
    }
}
