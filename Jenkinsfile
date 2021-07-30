pipeline {
    agent any
    environment {
        DATABASE_URI = credentials("DATABASE_URI")
        SECRET_KEY = credentials("SECRET_KEY")
         rebuild_db = 'true'
    }
    stages { 
        stage('Clone Stage') { 
            steps {
                sh 'bash jenkins/run.sh'
            }
        }
        stage('Install Stage') { 
            steps {
                sh 'bash jenkins/install.sh'
            }
        }
    stage('Testing Stage') { 
            steps {
                sh 'bash jenkins/test.sh'
            }
        }
    stage('Deploy Stage') { 
            steps {
                sh 'bash jenkins/deploy.sh'
            }
        }
    }
    // post {
    //     always {
            
    //     }
    // }
}