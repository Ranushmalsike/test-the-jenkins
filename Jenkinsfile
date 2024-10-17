pipeline {
    agent {
        docker {
            image 'python:3.10'  // Use Python 3.10 image
            label 'docker-agent' // Run this on the agent labeled 'docker-agent'
        }
    }
    
    stages {
        stage('Run Python Script') {
            steps {
                // This command runs inside the Docker container
                sh 'python hello_world.py'
            }
        }
    }
}

