pipeline {
     agent any
     stages {    
         stage('Build Docker Image') {
              steps {
                  sh 'docker build --tag capstone-app-mdumbu .'
              }
         }
         stage('Push Docker Image') {
              steps {
                  withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
                      sh "docker tag capstone-app-mdumbu mdumbuya93/capstone-app-mdumbu"
                      sh 'docker push mdumbuya93/capstone-app-mdumbu'
                  }
              }
         }
         stage('Deploying') {
              steps{
                  echo 'Deploying to AWS...'
                  withAWS(credentials: 'aws-static', region: 'us-east-2') {
                      sh "aws eks --region us-east-2 update-kubeconfig --name capstoneclustermdumbu"
                      sh "kubectl config use-context arn:aws:eks:us-east-2:960920920983:cluster/capstoneclustermdumbu"
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
                     sh "curl ad0e6a88870a9477989eb79393197b59-2120449898.us-east-2.elb.amazonaws.com:9080"
                  }
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
                    sh "docker system prune"
              }
        }
     }
}
