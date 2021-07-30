pipeline {
    agent any
    environment {
        DATABASE_URI = credentials("DATABASE_URI")
        SECRET_KEY = credentials("SECRET_KEY")
         rebuild_db = 'true'
    }
    stages { 
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
    post {
        always {
             cobertura coberturaReportFile: 'coverage.xml', failNoReports: false
            junit 'junit.xml'
        }
    }
}