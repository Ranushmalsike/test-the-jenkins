pipeline {
  agent any
  stages {
    stage('Install Python') {
    steps {
        sh 'pacman -S python3'
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
