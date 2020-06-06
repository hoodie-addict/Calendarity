pipeline {
  agent { 
    label 'master'
  }
  triggers { 
    pollSCM('* * * * *') 
  }
  options {
    buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
    timestamps()
  }
  stages {
    stage("create docker image") {
      steps {
          echo " ============== start building image =================="
          sh 'docker build -t calendarity:latest . '
      }
    }
  }
}