pipeline {
    agent any
    stages {
        stage('BuildArtifact') {
            steps {
                sh '''echo "Building Artifact"
                mvn clean package'''
            }
        }
        stage('BuildImage') {
            steps {
                sh '''echo "Building Docker Images"
                ./scripts/img-build.sh'''
            }
        }
        stage('RegistryPush') {
            steps {
                sh '''echo "Pushing Docker Images"
                chmod +x ./scripts/img-push.sh
                ./scripts/img-push.sh'''
            }
        }
        stage('CleanWorkspace') {
            steps {
                sh '''echo "Cleaning workspace"
                chmod +x ./scripts/img-clean.sh
                ./scripts/img-clean.sh'''
            }
        }
        stage('Deploy') {
            steps {
                sh '''echo "Deploying using docker compose"
                docker compose down || true
                docker compose up -d'''
            }
        }
    }
}