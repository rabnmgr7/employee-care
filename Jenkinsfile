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
                chmod +x ./scripts/img-build.sh
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
                sh '''echo "Removing previous services"
                docker compose down || true
                echo "Removing previoous image if exists."
                docker image rm -f rabnmgr7/employee-care:latest rabnmgr7/employee-care-db:latest
                echo "Creating new services!!!"
                docker compose up -d'''
            }
        }
    }
}