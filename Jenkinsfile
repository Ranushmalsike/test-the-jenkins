pipeline {
    agent {
        docker {
            image 'python:3.10'  // Use Python 3.10 image
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

