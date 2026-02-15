pipeline {
  agent any

  stages {

    stage('Checkout Code') {
      steps {
        checkout scm
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t myapp .'
      }
    }

    stage('Push to ECR') {
      steps {
        sh '''
        aws ecr get-login-password --region us-east-1 | \
        docker login --username AWS --password-stdin 555968133713.dkr.ecr.us-east-1.amazonaws.com

        docker tag myapp:latest 555968133713.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
        docker push 555968133713.dkr.ecr.us-east-1.amazonaws.com/myapp:latest
        '''
      }
    }

  }
}
