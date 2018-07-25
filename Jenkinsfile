node {
  try {
        stage('Checkout') {
          checkout scm
        }

        stage("Build") {
                  sh "docker build . -t cucutest"
        }

        stage("Acceptance Tests Cucumber") {
          sh "docker run --name cucutest cucutest"
          sh "docker cp cucutest:/usr/src/app/cucumber.json ./"
          cucumber 'cucumber.json'
          sh "docker rm cucutest"
          sh "docker rmi cucutest"
        }


    } catch (e) {
        throw e;
    } finally {
        deleteDir()
    }
}
