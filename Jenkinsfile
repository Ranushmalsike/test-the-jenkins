pipeline {
  agent any
  stages {
    stage('Install Python') {
    steps {
        sh 'apt install python3'
      }
    }
    stage('version') {
      steps {
        sh 'python3 --version'
      }
    }
    stage('hello') {
      steps {
        sh 'python3 helow.py'
      }
    }
  }
}
