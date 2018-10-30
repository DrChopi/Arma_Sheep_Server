# Arma_Sheep_Server

## On debian, ubuntu, etc...

 	apt-get update
 	apt-get install -y git
 	git clone 
 	./Arma_Sheep_Server/init.dependencies
  
## You can see the jenkins logs with command

 	cat log.txt

## Go to the localhost:8083 (password in jenkins logs. CHANGE IT !)

Go to Administration > Plug-in
Search Blue Ocean and install :
	
	Blue Ocean
	Blue Ocean Core JS
	Blue Ocean Pipeline Editor
	Dashboard for Blue Ocean
	Git Pipeline for Blue Ocean
  
## Return on jenkins home

  	New Item > Pipeline
	
	### Pipeline
	► Definition = Pipeline Script From SCM
	► SCM = GIT
	► Repository URL = https://github.com/DrChopi/Arma_Sheep_Server.git
	► Script Path = <Server Version>/Jenkinsfile
	
## Before create the server

	SERVER_PASSWORD=<your arma server admin password>

## Server versions
	
	► default-sheep-server
	► ace-sheep-server
