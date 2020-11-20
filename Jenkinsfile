pipeline {
     agent any
     stages {  
         stage('Lint Dockerfile') {
              steps {
				  sh 'hadolint Dockerfile'
              }
         }	 
         stage('Build Docker Image') {
              steps {
			      echo 'Checking for errors in the Dockerfile.'
                  sh 'docker build --tag capstone-app-mdumbu .'
				  echo 'No errors in the Dockerfile.'
              }
         }
         stage('Push Docker Image') {
              steps {
                  withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
                      sh "docker tag capstone-app-mdumbu mdumbuya93/capstone-app-mdumbu"
                      sh 'docker push mdumbuya93/capstone-app-mdumbu:latest'
                  }
              }
         }
         stage('Deploying') {
              steps{
                  echo 'Deploying to AWS...'
                  withAWS(credentials: 'aws-static', region: 'us-east-2') {
                      sh "aws eks --region us-east-2 update-kubeconfig --name capstoneclustermdumbu"
                      sh "kubectl config use-context arn:aws:eks:us-east-2:777649502053:cluster/capstoneclustermdumbu"
                      sh "kubectl apply -f capstone-cluster.yaml"
                      sh "kubectl get nodes"
                      sh "kubectl get deployments"
                      sh "kubectl get pod -o wide"
                      sh "kubectl get service/capstone-app-mdumbu"
                  }
              }
        }
        stage('Checking if app is up') {
              steps{
                  echo 'Checking if app is up...'
                  withAWS(credentials: 'aws-static', region: 'us-east-2') {
                     sh "curl a1d65ba8aa7384a47ae58de6d912ec95-763487502.us-east-2.elb.amazonaws.com:80"
                  }
				  echo 'App is up.'
               }
        }
        stage('Checking rollout') {
              steps{
                  echo 'Checking rollout...'
                  withAWS(credentials: 'aws-static', region: 'us-east-2') {
                     sh "kubectl rollout status deployments/capstone-app-mdumbu"
                  }
              }
        }
        stage("Cleaning up") {
              steps{
                    echo 'Cleaning up...'
                    sh "docker system prune -f"
              }
        }
     }
}
