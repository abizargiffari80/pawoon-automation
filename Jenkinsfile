pipeline {
    agent any

  stages {
    stage('Prepare') {
        steps {
            echo "Mulai jenkins"
            bat "dir"
            dir("Website") {
              bat "dir"
              bat "cucumber .\\features\\login_success.feature" // backslash "\"" nya perlu dikasih 2
              }
             }
          }
      }
}