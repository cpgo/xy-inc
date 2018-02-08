node('docker') {
    docker.image('postgres').withRun { container ->
        docker.image('ruby:2.5').inside("--link=${container.id}:postgres") { 
            stage 'Install Gems'
            rvm "bundle install"

            stage 'Invoke Rake'
            withEnv(['DATABASE_URL=postgres://postgres@postgres:5432/']) { 
                rvm "bundle exec rake"
            }
            junit 'spec/reports/*.xml' 
        }
    }
}