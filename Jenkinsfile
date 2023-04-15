pipeline {
   agent any
   stages {
       stage('Build') {
           steps {
               sh 'mvn clean package'
           }
       }
       stage('Test') {
           steps {
               sh 'mvn test'
           }
       }
       /* stage('Deploy') {
           steps {
               sh 'cp target/hackwhitehat-0.0.1-SNAPCHOT.war /usr/local/tomcat/webapps/'
           }
       } */
   }
}