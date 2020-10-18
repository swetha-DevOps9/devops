pipeline{
	agent any
 stages{
     stage('Build'){
         steps{
		 script{
	               def workspace = pwd()
	               }
		 echo 'first build thru docker file'
	         sh "echo ${workspace}"
		 sh "chmod 777 ${workspace}"
	         sh "docker build -t image1.0 ."
		 sh 'docker images'
		 sh 'docker ps -a'
		 sh 'docker ps'
		 sh 'docker run image1.0'
         }
     }
     stage('SonarQube Analysis') {
	 environment {
              def scannerHome = tool name: 'SonarQubeScanner', type: 'hudson.plugins.sonar.SonarRunnerInstallation';
        }
	 steps{
	      sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=CSS_API_Policy -Dsonar.exclusions=appdynamics/** -Dsonar.jacoco.reportPaths=build/jacoco/test.exec -Dsonar.junit.reportPaths=build/test-results/test -Dsonar.java.binaries=./src/main/** -Dsonar.sources=src"
              /*sh “/var/lib/jenkins/hudson.plugins.sonar.SonarRunnerInstallation/sonarqubescanner/bin/sonar-scanner -Dsonar.host.url=http://40.87.25.152:9000 -Dsonar.projectName=devops -Dsonar.projectVersion=1.0 -Dsonar.projectKey=devops:testfile2.py -Dsonar.sources=. -Dsonar.projectBaseDir=/var/lib/jenkins/workspace/Multibranch1_Dev" */
	 }
    }
     stage('Test'){
         steps{
             echo 'first test'
         }
     }
     stage('Deploy'){
         steps{
             echo 'first deploy'
         }
     }
 }
}
