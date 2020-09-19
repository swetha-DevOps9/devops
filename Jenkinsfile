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
	         sh 'docker build -t prime1.0 .'
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
