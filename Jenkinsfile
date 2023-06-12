pipeline {
    agent {
        docker { image 'node:16-alpine'}
    }
    stages {
        stage('Build') {
            steps {
                 echo "Bulding the application"
                 
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
