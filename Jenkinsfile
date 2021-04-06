node('gradle') {
    stage('checkout') {
        checkout([$class: 'GitSCM',
        branches: [[name: '*/master']],
        extensions: [],
        userRemoteConfigs: [[credentialsId: 'f8413abe-394d-4162-98d5-842a7e37942d', url: 'https://github.com/terekhovav88/docker_build.git']]])
   }

    stage('build') {
        def app = docker.build('docker_test')
    }

    stage('push') {
        docker.withRegistry('https://hub.docker.com/repository/docker/atinho/docker-test', 'atinho') {
        app.push("${env.BUILD_NUMBER}")
        app.push("latest")
          }
      }
 }