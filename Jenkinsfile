pipeline {
    agent any
    
    tools{
        maven 'mymaven'
    }

    stages {
        stage('CloneRepo') {
            steps {
                echo 'This is stage 1'
                git 'https://github.com/NikitasGithub/DevOpsClassCodes.git'
            }
        }
        stage('Compile Stage') {
            steps {
                echo 'This is stage 2'
                sh 'mvn compile'
            }
            
        }
        
        stage('Code package Stage') {
            steps {
                echo 'This is stage 5'
                sh 'mvn package'
            }
            }
        stage('Docker Build') {
    	agent any
            steps {
      	        sh 'docker build -t ngupta0107/address-book11:latest .'
      }
    }
    }
}
