pipeline {
    environment{
    registryCredential = 'spiner-dockerhub'
    }
    agent none
    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                sh 'cd School-web-application-master'
                sh 'pwd'
                sh 'npm install'
                sh 'npm build'
                sh 'node app.js'
            }
        }
    stage('Deploy'){
        agent any
        steps {
            script {
       docker.withRegistry( '', registryCredential ){
            def customImage = docker.build("always2kspiner/webproject:${env.BUILD_ID}")
            customImage.push()
                    }    
                }
            }
        }
    }
}
