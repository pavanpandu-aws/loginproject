pipeline {
	agent any 
	tools
	{
	    maven "maven"
	}
	stages {
		stage ('check out') {
			steps {
				git branch: 'main', url: 'https://github.com/pavanpandu-aws/loginproject.git'
				}
			}
		stage ('execute maven') {
			steps {
				sh 'mvn package'
				}
			}
		stage ('Docker Build and Tag') {
			steps {
				sh 'docker build -t webapp:latest .'
				sh 'docker tag webapp pavankumar/webapp:latest'
				// sh 'docker tag webapp pavankumar/webapp:$BUILD_NUMBER'
				}
			}
		stage ('Run Docker container on Jenkins Agent') {
			steps {
				sh 'docker run -d -p 8003:8080 webapp:latest'
				}
			}
		
		}
	 }
