pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "ranush/testpy1" // Replace with your Docker image name
        DOCKER_CREDENTIALS_ID = '9227569f-7464-49e4-b54f-18c5b074cf85'      // Jenkins credentials ID for Docker Hub
        GITHUB_REPO = 'https://github.com/Ranushmalsike/test-the-jenkins.git' // Replace with your GitHub repo
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: "${env.GITHUB_REPO}"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${env.DOCKER_IMAGE}")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', "${env.DOCKER_CREDENTIALS_ID}") {
                        docker.image("${env.DOCKER_IMAGE}").push('latest')
                    }
                }
            }
        }
    }
}
