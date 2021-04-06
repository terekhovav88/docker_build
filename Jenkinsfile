node('gradle') {
    stage('checkout') {
        checkout([$class: 'GitSCM',
        branches: [[name: '*/master']],
        extensions: [],
        userRemoteConfigs: [[credentialsId: 'f8413abe-394d-4162-98d5-842a7e37942d', url: 'https://github.com/terekhovav88/docker_build.git']]])
   }
    stage('build') {
        step([$class: 'DockerBuilderPublisher',
        cleanImages: false,
        cleanupWithJenkinsJobDelete: false,
        cloud: '',
        dockerFileDirectory: '.',
        fromRegistry: [],
        pushCredentialsId: '',
        pushOnSuccess: true,
        tagsString: 'docker_test'])
    }
 }