pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Debug Environment') {
            steps {
                sh 'echo $PATH'
                sh 'which python || echo "Python not found"'
                sh 'which python3 || echo "Python3 not found"'
            }
        }

        stage('Setup Python') {
            steps {
                script {
                    try {
                        sh 'python3 --version'
                    } catch (Exception e) {
                        echo "Python3 not found, attempting to install..."
                        sh 'apt-get update && apt-get install -y python3'
                    }
                }
            }
        }

        stage('Run Script') {
            steps {
                sh 'python3 hello.py'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
