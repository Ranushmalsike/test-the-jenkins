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
                sh 'which python || which python3 || echo "Python not found"'
            }
        }

        stage('Run Script') {
            steps {
                script {
                    def pythonCmd = sh(script: 'which python || which python3', returnStdout: true).trim()
                    if (pythonCmd) {
                        sh "${pythonCmd} hello.py"
                    } else {
                        error "Python not found. Please install Python on the Jenkins server."
                    }
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
