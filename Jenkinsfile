pipeline {
    agent any
    stages {
        stage ('Build Servlet Project') {
            steps {
                /*For windows machine */
               bat  'echo clean package'

                /*For Mac & Linux machine */
               // sh  'mvn clean package'
            }

            steps {

                bat 'docker build . -t nodejsexpressdemo-01:($env.BUILD_ID}'
            }

            post{
                success{
                    echo 'Now Archiving ....'

                    archiveArtifacts artifacts : '**/*'
                }
            }
        }        
    }
}
