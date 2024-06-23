pipeline {
  agent  any {
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t asadkhan08/node:16-alpine -f Dockerfile.dev'
      }
    }
  }
}
