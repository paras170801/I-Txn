pipeline {
    agent any
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
	stage('Deployment'){
		   steps {
		sh 'cp target/MESHO.war /home/swapnil/Documents/DevOps-Software/apache-tomcat-11.0.6/webapps'
			}}
    }
}
