pipeline {
    agent {
        docker {
            image 'python:3.9'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Debug Environment') {
            steps {
                sh 'echo $PATH'
                sh 'python --version'
            }
        }

        stage('Run Script') {
            steps {
                sh 'python hello.py'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
