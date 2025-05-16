pipeline {
    agent{
	label 'uat-label'
	}
	triggers {
  		pollSCM '* * * * *'
	}	
	parameters {
  		choice choices: ['DEV', 'QA', 'UAT', 'PROD'], name: 'ENVIRONMENT'
	}
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/devops-catchup/MESHO.git'
            }
        }
	stage('Compile and build') {
            steps {
                sh 'mvn install'
            }
        }
    }
}
