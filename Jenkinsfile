pipeline {
    agent {
        docker { 
            image 'yourusername/yourimage:tag' 
            args '-u root' // Optional: use this if you need root privileges
        }
    }
    
    stages {
        stage('Run Python Script') {
            steps {
                // This command will run inside the Docker container
                sh 'python helow.py'
            }
        }
    }
}
