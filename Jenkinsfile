pipeline {
    agent any
    stages {
        stage('Setup Python') {
            steps {
                sh 'python --version'
            }
        }
        // ... rest of your pipeline
        stage('test') {
            steps {
                sh 'python3 helow.py'
            }
        }
    }
}
