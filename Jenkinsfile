#!/usr/bin/env groovy

pipeline {
    agent any

    options {
        timestamps()
        ansiColor('xterm')
        parallelsAlwaysFailFast()
    }

    stages {
        stage('Checks') {
            parallel {
                // Check code syntax
                stage('Lint') {
                    steps {
                        script {
                            sh "make cs"
                        }
                    }
                }

                // Compile project
//                stage('Compile') {
//                    configFileProvider([configFile(fileId: 'maven-resolve-settings', variable: 'MAVEN_SETTINGS')]) {
//                        sh "${tool name: 'apache-maven-3', type: 'maven'}/bin/mvn -s $MAVEN_SETTINGS clean test-compile"
//                    }
//                }
            }
        }
    }
}
