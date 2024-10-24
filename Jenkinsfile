pipeline {
    agent any

    environment {
              // Define Docker Hub credentials ID stored in Jenkins credentials store
        DOCKERHUB_CREDENTIALS = '9227569f-7464-49e4-b54f-18c5b074cf85' // Replace with your actual credentials ID
        IMAGE_NAME = 'ranush/testpy1' // Replace with your Docker Hub username and desired image name
        TAG_NAME = "v2.0.${env.BUILD_ID}" // Example of creating a tag using the build ID
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Ranushmalsike/test-the-jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Define customImage here so it can be accessed later
                    customImage = docker.build("${IMAGE_NAME}:${TAG_NAME}")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Ensure customImage is accessible here
                    docker.withRegistry('https://index.docker.io/v1/', DOCKERHUB_CREDENTIALS) {
                        customImage.push() // This line will now work
                        customImage.push('latest')
                    }
                }
            }
        }

        stage('Cleanup') {
            steps {
                script {
                    sh "docker rmi ${IMAGE_NAME}:${TAG_NAME}"
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
