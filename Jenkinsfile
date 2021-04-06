@Library('jenkins-sample-lib')_

node('gradle') {
    stage('checkout') {
        gitCheckout(
        branch: "main",
        url: "https://github.com/terekhovav88/docker_build.git"
    )
   }
    stage('build') {
        sh '''docker build -t docker_test .
        '''
    }
 }