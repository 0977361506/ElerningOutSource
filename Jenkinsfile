  pipeline {
    agent any
    stages
    {
        stage('kiem tra')
        {
            steps{
            sh 'mvn -version '
            }
        }

        stage('build maven')
        {
        steps{
            sh('mvn clean install -Plinux')
             }
        }


        stage('build docker files ')
                {
                steps{
                    sh('docker build -f Dockerfile -t dockerdemo .')
                     }
                }
          stage('remove docker')
                      {
                          steps
                              {
                               sh('docker rm  -f dockerdemo')
                              }
                      }
         stage('run in docker')
         {
         steps{
            sh('docker run -d --name "dockerdemo" --volume /media/data/:/tmp/data-data1/media/data/ -p 8082:8082 dockerdemo:latest')
          }
         }

    }
    
}
 