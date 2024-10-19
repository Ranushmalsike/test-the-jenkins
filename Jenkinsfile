pipeline {
    agent {
        docker {
            image 'python:3.9'  // or whatever version you need
        }
    }
    stages {
        stage('Setup Python') {
            steps {
                sh 'python --version'
            }
        }
        // ... rest of your pipeline
    }
}
