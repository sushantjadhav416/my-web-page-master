pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                 echo "Bulding the application"
                 docker { image 'node:16-alpine'}
            }
        }
        stage('Test') {
            steps {
                echo "Testing the application"
                sh 'node --version'
            }
        }
        stage('Deploy') {
            steps {
                echo "deploying the application"
                
            }
        }
    }
}
