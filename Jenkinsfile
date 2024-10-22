pipeline {
    agent any

    environment {
        // Define Docker Hub credentials ID stored in Jenkins credentials store
        DOCKERHUB_CREDENTIALS = '9227569f-7464-49e4-b54f-18c5b074cf85' // Replace with your actual credentials ID
        IMAGE_NAME = 'ranush/testpy1' // Replace with your Docker Hub username and desired image name
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository
                git 'https://github.com/Ranushmalsike/test-the-jenkins.git' // Replace with your repo URL
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image using the Dockerfile in the repo
                    def customImage = docker.build("${IMAGE_NAME}:${env.BUILD_ID}")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Login to Docker Hub and push the image
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDENTIALS) {
                        customImage.push()
                        customImage.push('latest') // Optionally push with 'latest' tag
                    }
                }
            }
        }

        stage('Cleanup') {
            steps {
                script {
                    // Remove the local image after pushing to save space
                    sh "docker rmi ${IMAGE_NAME}:${env.BUILD_ID}"
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished'
        }
    }
}
