
pipeline {
    agent any
    tools{
        maven 'mymaven'
    }

    stages {
        stage('cloningRepo') {
            steps {
                echo 'This is stage 1'
                git 'https://github.com/NikitasGithub/DevOpsClassCodes.git'
            }
        }
        stage('Compile') {
            steps {
                echo 'This is stage 2'
                sh 'mvn compile'
            }
        }
        
        stage('Code Review') {
            steps {
                echo 'This is stage 3'
                sh 'mvn pmd:pmd'
            }
            post{
                success{
                    recordIssues(tools: [pmdParser(pattern: '**/pmd.xml')])
                }
            }
        }
        
        stage('Test') {
            steps {
                echo 'This is stage 4'
                sh 'mvn test'
            }
        }
        
        stage('packaging my code') {
            steps {
                echo 'This is stage 5'
                sh 'mvn package'
            }
        } 
        
    }
}
