pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh './gradlew assemble'
            }
        }
         stage('Test') {
            steps {
                sh './gradlew test'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker login'
                sh 'docker build -t spring-petclinic-modified .'
            }
        }
        stage('Push image to artifactory') {
            steps {
                sh 'docker login'
                sh 'docker tag spring-petclinic rahulpriyadarshi/spring-petclinic:0.2'
                sh 'docker push rahulpriyadarshi/spring-petclinic:0.2'
            }
        }
    }
}
