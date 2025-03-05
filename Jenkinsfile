pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/berezovsky13/nodejs.git'
            }
        }

        stage('Build Application') {
            steps {
                script {
                    echo 'Installing dependencies...'
                    sh 'npm install'
                    echo 'Building the application...'
                    sh 'npm run build'
                }
            }
        }

        stage('Print Credential') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'secret1', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        echo "Using credential: ${env.USERNAME}"
                    }
                }
            }
        }

        stage('Clean Workspace') {
            steps {
                cleanWs()
                echo 'Workspace cleaned!'
            }
        }
    }
}