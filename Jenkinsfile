pipeline {
    agent any

    stages {
        stage('Build process') {
            steps {
                      sh 'sudo docker build -t dattatrayd/category-management-jenkins:latest .'
            }
        }
        stage('Test Process') {
            steps {
           withCredentials([string(credentialsId: 'dockerHubPassword', variable: 'dockerHubPassword')]) 
         {
       sh "sudo docker login -u dattatrayd -p ${dockerHubPassword}"
	       }
    	sh 'sudo docker push dattatrayd/category-management-jenkins:latest'
            }
        }
        
    }
}
