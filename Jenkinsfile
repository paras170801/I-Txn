
pipeline {
    agent any
    tools{
        jdk 'jdk17'
        maven 'maven3.9'
    }
     stages{
        stage("Git Checkout"){
            steps{
                git branch: 'master', changelog: false, poll: false, url: 'https://github.com/devops-catchup/payment-webapp.git'
            }
        }
        stage("Compile"){
            steps{
                sh "mvn clean compile"
            }
        }
         stage("Test Cases"){
            steps{
                sh "mvn test"
            }
        }
        stage("Sonarqube Scanner"){
            steps{
                script{
                    withSonarQubeEnv(credentialsId: 'Sonar-token') {
                    sh 'mvn sonar:sonar'   
                    }
                 }
            }
        }
        stage("Build"){
            steps{
                sh " mvn clean install"
            }
        }
       stage("Docker Build and Image Push"){
            steps{
                script{
                    withDockerRegistry(credentialsId: 'docker', toolName: 'docker') {
                       sh "docker build -t swapnilhub/loginwebappseven ."
                       sh "docker push swapnilhub/loginwebappseven:latest"
                    }
                }
            }     
        }
        stage("TRIVY"){
            steps{
                sh "trivy image swapnilhub/loginwebappseven:latest > trivyimage.txt"
            }
        } 
        stage("Deploy using Docker container"){
            steps{
                sh "docker run -d --name=loginwebseven1 -p 8083:8080 swapnilhub/loginwebappseven:latest"
            }
        }       
}
}
