pipeline {
    agent any
    environment {

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
                sh 'python3 create.py'
                sh 'bash jenkins/deploy.sh'
            }
        }
    }
    // post {
    //     always {
            
    //     }
    // }
}