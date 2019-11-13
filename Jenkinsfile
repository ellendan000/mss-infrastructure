pipeline {
    agent { docker 'gradle:5.3.0-jdk8' }
    stages {
        stage('build mainModules') {
            steps {
                sh 'gradle clean build --info'
                sh 'cd api-gateway'
                sh 'gradle clean build --info'
                sh 'cp build/libs/api-gateway.jar ../build/libs/api-gateway.jar'
            }
        }
        stage('dockerize') {

        }
    }
}