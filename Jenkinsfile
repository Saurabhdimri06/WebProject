pipeline {
    environment{
    registryCredential = 'spiner-dockerhub'
    }
    agent none
    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                sh 'npm --version'
                sh 'npm build'
            }
        }
    stage('Deploy'){
        agent any
        steps {
       docker.withRegistry( '', registryCredential ){
            def customImage = docker.build("always2kspiner/webproject:${env.BUILD_ID}")
            customImage.push()
            }
        }
    }
}
