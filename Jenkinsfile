pipline {
    agent any

    stages{
        stage("check version"){
            steps{
                sh 'python3 --version'
            }
        }
        stage("test"){
            steps{
                sh 'python3 helow.py'
            }
        }
    }
}
