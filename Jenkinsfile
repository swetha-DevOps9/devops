pipeline{
	agent {
		dockerfile{
			filename 'Dockerfile'
		}
	}
 stages{
     stage('Build'){
         steps{
		 script{
	               def workspace = pwd()
	               }
		 echo 'first build thru docker file'
	         sh "echo ${workspace}"
		 sh "chmod 777 ${workspace}"
	         /*sh "docker build -t prime1.0 ."*/
		 sh 'docker images'
		 sh 'docker ps -a'
		 sh 'docker ps'
		 sh 'docker run prime1.0'
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
