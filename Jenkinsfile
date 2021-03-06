#!groovy

pipeline {
  agent { label 'jenkins-slave' }
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
          reuseNode true
        }
      }
      
      steps {
        //Send to Slack notify
        slackSend (color: '#FFFF00', message: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        //Build
        sh 'mvn clean install'
      }   
    }
    
   stage('Unit Tests') {
      steps {
      
        junit 'jstrict/jutils/target/surefire-reports/*.xml'  
 
      }
        
    }
    
    
  stage('Docker Build') {
      steps {
        sh 'docker build -t kub-ansible:5000/admin/librarystrict:$BUILD_NUMBER .'
      }
    }
 stage('Docker Push') {
      steps {
          sh "docker login -u admin -p N0v0sibirsk! kub-ansible:5000"
          sh 'docker push kub-ansible:5000/admin/librarystrict:$BUILD_NUMBER'
        }
       }
 stage('Deploy to Kubernetes') {
      steps {
           sh 'kubectl set image deployment/librarystrict librarystrict=kub-ansible:5000/admin/librarystrict:$BUILD_NUMBER -n=dev'
         }
        }
     }
post {
    success {
      slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }

    failure {
      slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }     
 }
      
        }
