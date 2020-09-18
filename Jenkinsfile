pipeline{
 agent any
 stages{
     stage('Build'){
         steps{
             echo 'first build thru docker file'
	     sh 'sudo docker build -t prime1.0 .'
			 
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
