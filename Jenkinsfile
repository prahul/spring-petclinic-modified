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
                sh 'docker build -t spring-petclinic-modified .'
            }
        }
        stage('Push image to artifactory') {
            steps {
                sh 'docker push rahultest2022.jfrog.io/spring-petclinic'
            }
        }
    }
}
