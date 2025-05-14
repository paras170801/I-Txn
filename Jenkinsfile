pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/devops-catchup/MESHO.git'
            }
        }
	stage('Compile and build') {
            steps {
                sh 'home/swapnil/Documents/DevOps-Software/apache-maven-3.9.8/bin/mvn install'
            }
        }
	stage('Deployment'){
		   steps {
		sh 'cp target/MESHO.war /home/swapnil/Documents/DevOps-Software/apache-tomcat-11.0.6/webapps'
			}}
    }
}
