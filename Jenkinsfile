pipeline {
    agent { docker { image 'python:3.13.0-alpine3.20' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
        stage('hello') {
            steps {
                sh 'python helow.py'
            }
        }
        stage('hello2') {
            steps {
                sh 'python3 helow.py'
            }
        }
    }
}

