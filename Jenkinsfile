pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "hello-world-docker"
    }
    triggers {
        githubPush()  
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Ambika-cloudside/ambika-jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh "docker run -d -p 5000:5000 --name hello-world-container ${DOCKER_IMAGE}"
                }
            }
        }
    }
}
