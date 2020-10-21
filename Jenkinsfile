pipeline {
  agent {
        docker { image 'node:14-alpine' }
    }
	
  stages {
    stage('Build') {
      steps {
             sh '''
                 tidy index.html
	     ''' 
      }
    }
    stage('Test') {
      steps {
              sh 'node --version'
    }
   }
  }
}
