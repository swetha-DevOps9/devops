pipeline{
 agent any
 stages{
     stage('Build'){
         steps{
             echo 'first build'
			 sh 'python testfile2.py'
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
