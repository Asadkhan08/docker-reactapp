pipeline {
  agent  any 
    stages {
    stage('Build') {
      steps {
        sh 'docker build -t asadkhan08/fullstackproject:16-alpine -f Dockerfile.test . '
      }
    }
  }
}
