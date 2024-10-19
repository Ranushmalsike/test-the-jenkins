pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // This will check out your repository
                checkout scm
            }
        }

        stage('Setup Python') {
            steps {
                // This assumes Python is already installed on your Jenkins agent
                // If it's not, you might need to install it here
                sh 'python --version'
            }
        }

        stage('Run Script') {
            steps {
                // Run the Python script
                sh 'python helow.py'
            }
        }
    }

    post {
        always {
            // Clean up workspace
            cleanWs()
        }
    }
}
