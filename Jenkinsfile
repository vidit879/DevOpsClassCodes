pipeline{
    agent any
    tools{
        maven 'my_maven'
    }
    stages{
        stage('Clone Repo'){
            steps{
                echo 'This is stage 1'
                git 'https://github.com/NikitasGithub/DevOpsClassCodes.git'
            }
        }
        stage('Compile'){
            steps{
                echo 'This is compile stage'
                sh 'mvn compile'
            }
        }
         stage('Code Review'){
            steps{
                sh 'mvn pmd:pmd'
            }
            post{
                success{
                    recordIssues(tools: [pmdParser(pattern: '**/pmd.xml')])
                }
            }
        }
          stage('Code Test'){
            steps{
                sh 'mvn test'
            }
            post{
                success{
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('package'){
            steps{
                echo 'This is package stage'
                sh 'mvn package'
            }
        }
    }
}
