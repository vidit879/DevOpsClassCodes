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

     stage('Deploy') {
            steps {
                // Run the Docker container from the built image (replace 'your-container-name' and ports as needed)
                sh 'docker run -d --name nikita-docker -p 8085:8080 address-book11:latest'
            }
        }
    }
}
