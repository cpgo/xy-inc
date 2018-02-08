pipeline {
    agent { docker 'ruby:2.5' }
    stages {
        stage('build') {
            steps {
                sh 'bundle install'
            }
        }
        stage('test') {
          rake test
        }
    }
}