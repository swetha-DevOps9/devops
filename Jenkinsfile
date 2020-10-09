pipeline{
	agent{
		docker { image 'alpine' }
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
	         sh "docker build -t image1.0 ."
		 sh 'docker images'
		 sh 'docker ps -a'
		 sh 'docker ps'
		 sh 'docker run image1.0'
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
