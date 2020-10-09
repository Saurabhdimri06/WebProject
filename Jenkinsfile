pipeline {
    agent none
    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                sh 'npm --version'
                sh 'npm build'
            }
        }
    }
}
