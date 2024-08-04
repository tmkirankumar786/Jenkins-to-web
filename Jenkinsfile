pipeline {
  agent any
  stages {
      stage ('GIT Checkout') {
         steps {
           git branch: 'main', url: 'https://github.com/tmkirankumar786/Jenkins-to-web'
           echo 'GIT Checkout Successful'
         }
      }
      stage ('Build Docker Image') {
         steps {
           script {
             docker.build("jenkins-to-web-image")
             echo 'Docker Image Created Succesful'
           }
        }
      }
      stage ('Create a Container') {
         steps {
           script {
             docker.image('jenkins-to-web-image').run('-d -p 7070:7070 --name cont-jen-to-web')
             echo 'Docker Container Started'
           }
        }
      }
  }
}
