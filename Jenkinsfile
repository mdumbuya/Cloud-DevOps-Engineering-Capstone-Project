pipeline {
  agent any 
  stages {
    stage('Build') {
      steps {
             sh '''
                 tidy index.html
	     ''' 
      }
    }
  }
}
