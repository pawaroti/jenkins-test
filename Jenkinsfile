pipeline {
    agent {
        docker {
            image 'odannyc/eclint'
            args '-v $HOME:/app/code'
        }
    }

    options {
        timestamps()
        parallelsAlwaysFailFast()
    }

    stages {
        // Check code syntax
        stage('Lint') {
            steps {
                sh 'check $(git diff --name-only --diff-filter=d $(git merge-base HEAD $CHANGE_TARGET) | grep -E ".java$")'
            }
        }
    }
}

